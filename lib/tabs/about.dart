import 'package:flutter/material.dart';
import 'strings.dart';
class About extends StatelessWidget{
 const About({super.key});
// a page to tell about this project and who made it, for what reason.
  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
  body: Center( 
    child: Container(
      alignment: Alignment.center,
      width: 500,
      height: 500,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 174, 211, 202),
        borderRadius: const BorderRadius.all(Radius.circular(20.5)),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 25, 75, 62).withOpacity(0.7),
            spreadRadius: 15,
            blurRadius: 10,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: const Center(child:Text(Texts.aboutme,textAlign: TextAlign.center,style:TextStyle(color:Colors.white,fontFamily: 'Overpass',fontSize:19,)),),
    ),
  ),
  );
}
}