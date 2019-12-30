import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mandalorian/bloc/bloc_principal.dart';
import 'package:mandalorian/components/cast_cube.dart';
import 'package:mandalorian/components/menu_dropdown.dart';
import 'package:mandalorian/modules/main_modules.dart';
import 'package:mandalorian/screens/cast_page.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

AnimationController _animationController;
bool _isPlaying = false;
final bloc = MainModule.to.getBloc<BlocPrincipal>();
class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          StreamBuilder(
            stream: bloc.output,
            builder: (context, snapshot){
              return bloc.page;
            },
          ),
          Positioned(
            left: 120,
            right: 120,
            top: 0,
            child: Image.asset(
              "assets/img/logo.png",
              fit: BoxFit.cover,
              scale: 9,
            ),
          ),
          Positioned(
            right: 30,
            top: 30,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(0.5)),
              child: IconButton(
                icon: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  color: Colors.white,
                  progress: _animationController,
                ),
                onPressed: () {
                  setState(() {
                    _isPlaying = !_isPlaying;
                    _isPlaying
                        ? _animationController.forward()
                        : _animationController.reverse();
                  });
                },
              ),
            ),
          ),
          _isPlaying
              ? Positioned.fill(
                  right: 30,
                  top: 120,
                  child: MenuDrop(),
                )
              : Container(),
        ],
      ),
    );
  }
}
