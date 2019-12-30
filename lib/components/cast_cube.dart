import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mandalorian/bloc/cast_bloc.dart';


import 'package:mandalorian/models/castModel.dart';
import 'package:mandalorian/modules/main_modules.dart';

final bloc = MainModule.to.getBloc<CastBloc>();

class CastCube extends StatefulWidget {
  CastCube({Key key}) : super(key: key);


  @override
  _CastCubeState createState() => _CastCubeState();
}

class _CastCubeState extends State<CastCube> {
  var selectedItem = CastModel();

  List<GestureDetector> _buildListItems() {
    int index = 0;
    return cast.map((cast) {
      var boxDecoration = BoxDecoration();

      if (selectedItem == cast) {
        boxDecoration = BoxDecoration(
          border: Border.all(color: Colors.white, width: 3,),
        );
      }

      var container = Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 50,
            child: Image.asset(
              cast.img,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
            decoration: boxDecoration,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 5,
            height: 5,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          )
        ],
      );

      final gestureDetector = GestureDetector(
        child: container,
        onTap: () {
          setState(() {
            selectedItem = cast;
            bloc.input.add(bloc.img = cast.img);
            bloc.input.add(bloc.actorname = cast.nome);
            bloc.input.add(bloc.caracter = cast.caracter);
            bloc.input.add(bloc.desc = cast.desc);
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
