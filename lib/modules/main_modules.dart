import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:mandalorian/bloc/bloc_principal.dart';
import 'package:mandalorian/bloc/cast_bloc.dart';
import 'package:mandalorian/screens/home_page.dart';

class MainModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
    Bloc((i) => CastBloc()),
    Bloc((i) => BlocPrincipal())
  ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Home();

  static Inject get to => Inject<MainModule>.of();
}
