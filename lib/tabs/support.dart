import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


// LINKS **********************************************************
 final Uri _cuddly = Uri.parse('https://cuddly.com/club');
final Uri _rsa = Uri.parse('https://www.animalrescuealbania.org/');
// LINKS **********************************************************



class Support extends StatelessWidget {
  const Support({super.key});
// showing links for animal protection organisations and my socials
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SupportTab()
    );
  }
}

class SupportTab extends StatelessWidget{
  
  const SupportTab ({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text("Click here for links to donate/support",style: TextStyle(fontFamily: 'Overpass',fontSize:20),),
            ElevatedButton(onPressed: ()=> _launchURL(_rsa), child: Text("Open Rescue animal albania")),
            SizedBox(height:20),
            ElevatedButton(onPressed: ()=>_launchURL(_cuddly), child: Text("Open Cuddly"))
          ],
        )

      )
    );
  }
}

Future<void>_launchURL(Uri url) async{
  if(!await launchUrl(url)){
    throw Exception("Error!");
  }
}


