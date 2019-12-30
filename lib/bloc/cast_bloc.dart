import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class CastBloc extends BlocBase {

  
  final _blocController = BehaviorSubject();
  Stream get output => _blocController.stream;
  Sink get input => _blocController.sink;

    var img = 'assets/img/manda.jpg';
    var actorname = 'PEDRO PASCAL AS';
    var caracter = "THE MANDALORIAN";
    var desc = "THE MANDALORIAN IS AWESOME SPACE WESTERN WHERE MAIN\n CHARACTER IS A LONE GUNFIGHTER AND BOUTY HUNTER";

@override
void dispose() { 
  _blocController.close();
  super.dispose();
}
}