import 'package:flutter/material.dart';
import 'package:mandalorian/bloc/bloc_principal.dart';
import 'package:mandalorian/models/MenuModel.dart';
import 'package:mandalorian/modules/main_modules.dart';

class MenuDrop extends StatefulWidget {
  MenuDrop({Key key}) : super(key: key);

  @override
  _MenuDropState createState() => _MenuDropState();
}

class _MenuDropState extends State<MenuDrop> {
  var selectedItem = MenuModel();
  final bloc = MainModule.to.getBloc<BlocPrincipal>();

  List<GestureDetector> _buildListItems() {
    int index = 0;
    return menu.map((menu) {
      var textStyle = TextStyle(
        fontFamily: "CastIron",
        fontSize: 100,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Colors.white,
      );
      if (selectedItem == menu) {
        textStyle = TextStyle(
          fontFamily: "CastIron",
          fontSize: 100,
          foreground: Paint()..color = Colors.white,
        );
      }

        if (selectedItem.page == menu.page) {
        textStyle = TextStyle(
          fontFamily: "CastIron",
          fontSize: 100,
          foreground: Paint()..color = Colors.white,
        );
      }

      var text = Text(
        menu.text,
        style: textStyle,
        textAlign: TextAlign.right
      );

      final gestureDetector = GestureDetector(
        child: text,
        onTap: () {
          setState(() {
            selectedItem = menu;
            selectedItem.page = menu.page;
            bloc.input.add(bloc.page = menu.page);
          });
        },
      );
      return gestureDetector;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildListItems(),
    );
  }
}
