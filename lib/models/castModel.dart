import 'package:flutter/cupertino.dart';


class CastModel {
  String nome;
  String caracter;
  String img;
  String desc;
  Widget page;

  CastModel({this.nome, this.img, this.caracter, this.desc, this.page});
}

var cast = [
  CastModel(
    nome: 'PEDRO PASCAL AS',
    caracter: 'THE MANDALORIAN',
    img: "assets/img/manda.jpg",
    desc:
        'THE MANDALORIAN IS AWESOME SPACE WESTERN WHERE MAIN\n CHARACTER IS A LONE GUNFIGHTER AND BOUTY HUNTER',
  ),
  CastModel(
    nome: 'GINA CARANO AS',
    caracter: 'CARA DUNE',
    img: 'assets/img/caradune.jpg',
    desc:
        'FORMER REBEL SHOCK TROOPER-TURNED-MECENARY WHO\n FOUGHT IN THE CIVIL WAR FOR THE REBEL ALLIANCE',
  ),
  CastModel(
    nome: 'TAIKA WAITITI AS VOICE OF',
    caracter: 'IG-11',
    img: 'assets/img/ig-11.jpg',
    desc:
        'A NATIVE BOUNTY HUNTIING DROID WHO PROCESSES\n CONVERSATIONS IN A PRECISE AND LITERAL MANNER',
  ),
  CastModel(
    nome: 'CARL WEATHERS AS',
    caracter: 'GREEF CARGA',
    img: 'assets/img/greefcarga.jpg',
    desc:
        'THE LEADER OF A BOUNTY HUNTER GUILD WHO HIRES THE\n MANDALORIAN TO TRACK A VALUABLE ASSET',
  ),
  CastModel(
    nome: 'NICK NOLTE AS',
    caracter: 'KUIIL',
    img: 'assets/img/kiull.jpeg',
    desc:
        'THE UNGNAUGHT MOISTURE FARMER WITCH HELPED THE\n MANDALORIAN REPAIR HIS SHIP',
  ),
];
