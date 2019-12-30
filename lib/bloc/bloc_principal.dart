import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:mandalorian/components/cast_cube.dart';
import 'package:mandalorian/screens/cast_page.dart';
import 'package:rxdart/rxdart.dart';

class BlocPrincipal extends BlocBase {
  Widget page = CastMain();

  final _blocController = BehaviorSubject();

  Stream get output => _blocController.stream;
  Sink get input => _blocController.sink;
  
  @override
  void dispose() { 
    _blocController.close();
    super.dispose();
  }
}