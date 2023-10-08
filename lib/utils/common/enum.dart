import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




enum Status{
  enviado(messages: 'Enviado'),
  lido(messages: 'Lido'),
  analisando(messages: 'Analisando'),
  respondido(messages: 'Respondido');

  const Status({required this.messages});
  final String messages;

  Color? corChip(String texto){
    int cor= 50;
    if(texto==Status.enviado.messages){return Colors.green[cor];}
    else if(texto==Status.lido.messages){ return Colors.red[cor];}
    else if(texto==Status.respondido.messages){ return Colors.purple[cor];}
    else  return Colors.yellow[cor];
  }

  Color? corTexto(String texto){
    if(texto==Status.enviado.messages){return Colors.green;}
    else if(texto==Status.lido.messages){ return Colors.red;}
    else if(texto==Status.respondido.messages){ return Colors.purple;}
    else  return Colors.amber;
  }

}


enum StatusReserva{
  pendente(messages: 'pendente'),
  aprovado(messages: 'aprovado'),
  reprovado(messages: 'reprovado');


  const StatusReserva({required this.messages});
  final String messages;

  Color? corChip(String texto){
    int cor= 50;
    if(texto==StatusReserva.pendente.messages){return Colors.amber[cor];}
    else if(texto==StatusReserva.aprovado.messages){ return Colors.green[cor];}
    else if(texto==StatusReserva.reprovado.messages){ return Colors.red[cor];}
    else  return Colors.yellow[cor];
  }

  Color? corTexto(String texto){
    if(texto==StatusReserva.pendente.messages){return Colors.amber;}
    else if(texto==StatusReserva.aprovado.messages){ return Colors.green;}
    else if(texto==StatusReserva.reprovado.messages){ return Colors.red;}
    else  return Colors.amber;
  }

}

enum StatusAgenda{
  expediente(messages: 'expediente'),
  ocupado(messages: 'ocupado'),
  descanso(messages: 'descanso'),
  ferias(messages: 'férias'),
  licenca(messages: 'licença'),
  afastado(messages: 'afastado');

  const StatusAgenda({required this.messages});
  final String messages;

  static int indexStatus(String texto){
    if(texto==StatusAgenda.expediente.messages){return 0;}
    else if(texto==StatusAgenda.ocupado.messages){ return 1;}
    else if(texto==StatusAgenda.descanso.messages){ return 2;}
    else if(texto==StatusAgenda.ferias.messages){ return 3;}
    else if(texto==StatusAgenda.licenca.messages){ return 4;}
    else if(texto==StatusAgenda.afastado.messages){ return 5;}
    else  return 6;
  }

  static String textoStatus(int texto){
    if(texto==0){return StatusAgenda.expediente.messages;}
    else if(texto==1){ return StatusAgenda.ocupado.messages;}
    else if(texto==2){ return StatusAgenda.descanso.messages;}
    else if(texto==3){ return StatusAgenda.ferias.messages;}
    else if(texto==4){ return StatusAgenda.licenca.messages;}
    else if(texto==5){ return StatusAgenda.afastado.messages;}
    else  return StatusAgenda.expediente.messages;
  }
  static Color? corChip(String texto){
    int cor= 50;
    if(texto==StatusAgenda.expediente.messages){return Colors.green[cor];}
    else if(texto==StatusAgenda.ocupado.messages){ return Colors.purpleAccent[cor];}
    else if(texto==StatusAgenda.descanso.messages){ return Colors.cyan[cor];}
    else if(texto==StatusAgenda.ferias.messages){ return Colors.orange[cor];}
    else if(texto==StatusAgenda.licenca.messages){ return Colors.blue[cor];}
    else if(texto==StatusAgenda.afastado.messages){ return Colors.red[cor];}
    else  return Colors.brown[cor];
  }

  static Color? corTexto(String texto){
    if(texto==StatusAgenda.expediente.messages){return Colors.green;}
    else if(texto==StatusAgenda.ocupado.messages){ return Colors.pinkAccent;}
    else if(texto==StatusAgenda.descanso.messages){ return Colors.cyan;}
    else if(texto==StatusAgenda.ferias.messages){ return Colors.orange;}
    else if(texto==StatusAgenda.licenca.messages){ return Colors.blue;}
    else if(texto==StatusAgenda.afastado.messages){ return Colors.red;}
    else  return Colors.brown;
  }

}

enum RoleApp {
  User,Admin,SuperAdmin,Rh,Secretario,Controle,Master,
}


