import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'strings.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: ListView(
      children: <Widget>[
        _buildCards(
            Texts.loremipsum,imagePath: 'assets/images/cat1.png', gradient:const LinearGradient(colors:  [ Color.fromARGB(255, 238, 187, 183), Color.fromARGB(255, 183, 207, 226)],) ),
        _buildCards(
         Texts.loremipsum,imagePath: 'assets/images/cat2.png', gradient:const LinearGradient(colors: [ Color.fromARGB(255, 239, 188, 205), Color.fromARGB(255, 217, 169, 225)])),
        _buildCards(
          Texts.loremipsum,imagePath: 'assets/images/cat3.png',gradient: const LinearGradient(colors: [ Color.fromARGB(255, 203, 228, 233), Color.fromARGB(255, 203, 225, 210)])),
        _buildCards(
           Texts.loremipsum,imagePath: 'assets/images/cat4.png',gradient:const  LinearGradient(colors: [ Color.fromARGB(255, 225, 230, 189), Color.fromARGB(255, 155, 166, 212)])),
        _buildCards(
           Texts.loremipsum,imagePath: 'assets/images/cat5.png',gradient:const LinearGradient(colors: [ Color.fromARGB(255, 226, 205, 201), Color.fromARGB(255, 212, 168, 187)])),
        _buildCards(
           Texts.loremipsum,imagePath: 'assets/images/cat1.png',gradient:const LinearGradient(colors: [ Color.fromARGB(255, 228, 195, 231), Color.fromARGB(255, 170, 155, 223)])),

        //per more gradients nis nga posht, per more crds nga siper
      ],
    ));
  }

  Widget _buildCards(String subTitle, {String? imagePath, Gradient? gradient}) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: gradient?? const  LinearGradient(
          colors: [Color(0xFFBDE2BD), Color(0xFFB1D7E7)], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Card(
        color: Colors.transparent,
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          contentPadding:const EdgeInsets.all(20.0),
           leading: imagePath!=null? Image.asset(
                    imagePath, 
                    width: 50.0, 
                    height: 120.0, 
                    //! RREGULLO IMAZHET DHE PERMASAT
                  ):null,
          subtitle: Text(
            subTitle,
            style:const TextStyle(
                color: Color.fromARGB(255, 97, 97, 97),
                fontFamily: "Overpass",
                fontSize: 12),
          ),
        ),
      ),
    );
  }
}
