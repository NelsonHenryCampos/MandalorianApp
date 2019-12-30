
import 'package:flutter/material.dart';
import 'package:mandalorian/bloc/cast_bloc.dart';
import 'package:mandalorian/components/cast_cube.dart';
import 'package:mandalorian/models/StylesModel.dart';
import 'package:mandalorian/modules/main_modules.dart';

class CastMain extends StatelessWidget {
   CastMain({Key key}) : super(key: key);

final bloc = MainModule.to.getBloc<CastBloc>();


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        StreamBuilder(
          stream: bloc.output,
          builder: (context, snap) {
            return Image.asset(
              bloc.img,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            );
          },
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                StylesModel.primaryColor.withOpacity(0.7),
                StylesModel.secundaryColor.withOpacity(0),
                StylesModel.thridColor.withOpacity(0.9),
              ],
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 20,
          child: Container(
            width: 50,
            height: 800,
            child: CastCube(),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 0,
          left: 0,
          child: Container(
            child: StreamBuilder(
              stream: bloc.output,
              builder: (context, snap) {
                return Column(
                  children: <Widget>[
                    Text(
                      bloc.actorname,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Montserrat'),
                    ),
                    Text(
                      bloc.caracter,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 100,
                          fontFamily: 'CastIron'),
                    ),
                    Text(
                      bloc.desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'CastIron'),
                    ),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
