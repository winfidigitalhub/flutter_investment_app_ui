
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:investment/dataset.dart';


class BuyAppPage extends StatefulWidget {

  @override
  State<BuyAppPage> createState() => _BuyAppPageState();
}

class _BuyAppPageState extends State<BuyAppPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Purcahse This App"),

      ),
          body: Stack(
      alignment: Alignment.topCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.indigo,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
                alignment: Alignment.topCenter,
//                child: CardList()
            ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 0,top: 20, right: 0, bottom: 0),
                  child: Column(
                    children: [
                          Text('Go Premium', style: TextStyle(fontSize: 18, color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                          ),

                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/New_logo.jpg"),
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),
//            LastInvestment(),
//            Deposits(),
            GestureDetector(
              onTap: (){
                openwhatsapp() async{
                  var whatsapp ="+2349032834805";
                  var whatsappURl_android = "whatsapp://send?phone="+whatsapp+"&text=Hello, I would like to purchase and modify this Investment App according to my business.";
                  var whatappURL_ios ="https://wa.me/$whatsapp?text=${Uri.parse("Hello, I would like to purchase and modify this Investment App according to my business.")}";
                  if(Platform.isIOS){
                    // for iOS phone only
                    if( await canLaunch(whatappURL_ios)){
                      await launch(whatappURL_ios, forceSafariVC: false);
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: new Text("whatsapp no installed")));
                    }
                  }else{
                    // android , web
                    if( await canLaunch(whatsappURl_android)){
                      await launch(whatsappURl_android);
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: new Text("whatsapp no installed")));
                    }
                  }
                }
              setState(() {
                openwhatsapp();
              });

              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF24CCA7),
                ),
                width: MediaQuery.of(context).size.width-50,
                height: 50,
                  child:
                    Center(child: Text("Purchase This App",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600),)),
                ),
              ),

            Text('Developed by \n WINFI DIGITAL TECHNOLOGY \n \n +234 9032834805 \n +234 7039152425 \n winfidigitals@gmail.com', style: TextStyle(fontSize: 14, color: Colors.deepOrangeAccent), textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    ),
    );
  }

}






