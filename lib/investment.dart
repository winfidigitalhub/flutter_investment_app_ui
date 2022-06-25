import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:investment/dataset.dart';
import 'Buy App Page.dart';

class Investment extends StatelessWidget {
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
          title: Text("Investment Overview"),

        ),
        body: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.indigo,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
          ),
          Column(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BuyAppPage()),
                      );

                    },
                    child: Market()
                ),Recommended(),Return()
              ],
            ),


        ]));
  }
}

//class Return extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: EdgeInsets.all(10),
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: [
//          Text("Return on Investment",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
//          SizedBox(height: 15,),
//          Graph()
//        ],
//      ),
//    );
//  }
//}
//
//class Graph extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      height: 120,
//      child: LineChart(
//        LineChartData(
//          minX:0,
//          maxX:12,
//          minY:0,
//          maxY:12,
//          gridData: FlGridData(show: false),
//          borderData: FlBorderData(show: false),
//          titlesData: FlTitlesData(
//            leftTitles: SideTitles(showTitles: false),
//            bottomTitles: SideTitles(showTitles: true,
//            getTextStyles: (vale)=>TextStyle(color: Color(0xFF008CFF),fontWeight: FontWeight.bold,fontSize: 16),
//            getTitles: (value){
//              switch(value.toInt()){
//                case 1:
//                  return 'J';
//                case 2:
//                  return 'F';
//                case 3:
//                  return 'M';
//                case 4:
//                  return 'A';
//                case 5:
//                  return 'M';
//                case 6:
//                  return 'J';
//                case 7:
//                  return 'J';
//                case 8:
//                  return 'A';
//                case 9:
//                  return 'S';
//                case 10:
//                  return 'O';
//                case 11:
//                  return 'N';
//                case 12:
//                  return 'D';
//              }
//              return '';
//            }
//            )
//          ),
//          lineBarsData: [
//            LineChartBarData(
//              isCurved: true,
//              colors: [
//                Color(0xFF23B6E6),
//                Color(0xFF02D39A)
//              ],
//              barWidth: 5,
//                isStrokeCapRound: true,
//              dotData: FlDotData(show: false),
//              belowBarData: BarAreaData(show: true,
//              colors: [
//                ColorTween(
//                  begin: Color(0xFF23B6E6),
//                  end: Color(0xFF02D39A)
//                ).lerp(0.2).withOpacity(0.1)
//              ]),
//              aboveBarData:  BarAreaData(show: true,
//                  colors: [
//                    ColorTween(
//                        begin: Color(0xFF23B6E6),
//                        end: Color(0xFF02D39A)
//                    ).lerp(0.2).withOpacity(0.1)
//                  ]),
//              spots: [
//                FlSpot(0, 0),
//                FlSpot(1, 3),
//                FlSpot(2, 4),
//                FlSpot(3, 6),
//                FlSpot(4, 4),
//                FlSpot(5, 6),
//                FlSpot(6, 7),
//                FlSpot(7, 8),
//                FlSpot(8, 7),
//                FlSpot(9, 9),
//                FlSpot(10, 6),
//                FlSpot(11, 8),
//                FlSpot(12, 9),
//              ]
//            )
//          ]
//        )
//      ),
//    );
//  }
//}




 class Return extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.all(10),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Text("Monthly Return on Investment %",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
           Graph()
         ],
       ),
     );
   }
 }

 class Graph extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Container(
       height: 120,
       child: LineChart(LineChartData(
         minX: 0,
         maxX:12,
         minY:0,
         maxY:150,
         gridData: FlGridData(show: true),
         borderData: FlBorderData(show: false),
         titlesData: FlTitlesData(
           leftTitles: SideTitles(
             showTitles: true,
           ),
           bottomTitles: SideTitles(
             showTitles: true,
//             getTextStyles: (value)=>TextStyle(color: Color(0xFF008CFF),
//             fontWeight: FontWeight.bold,fontSize: 16),
             getTitles: (value){
               switch (value.toInt()){
                 case 1:
                   return 'J';
                 case 2:
                   return 'F';
                 case 3:
                   return 'M';
                 case 4:
                   return 'A';
                 case 5:
                   return 'M';
                 case 6:
                   return 'J';
                 case 7:
                   return 'J';
                 case 8:
                   return 'A';
                 case 9:
                   return 'S';
                 case 10:
                   return 'O';
                 case 11:
                   return 'N';
                 case 12:
                   return 'D';
               }
               return '';
             }
           )
         ),
         lineBarsData: [
           LineChartBarData(
             isCurved: true,
             colors:[
               Color(0xFF23b6e6),
               Color(0xFF02D39A)
             ],
             barWidth: 2,isStrokeCapRound: true,
             dotData: FlDotData(show:true),
             belowBarData: BarAreaData(show:true,colors:
             [
               ColorTween(
                 begin: Colors.teal,
                 end: Colors.redAccent
               ).lerp(0.2).withOpacity(0.3)
             ]),
             aboveBarData: BarAreaData(show:true,colors:
             [
               ColorTween(
                   begin: Colors.orangeAccent,
                   end: Colors.teal
               ).lerp(0.2).withOpacity(0.5)
             ]),
             spots:[
               FlSpot(0,15),
               FlSpot(1,25),
               FlSpot(2,30),
               FlSpot(3,50),
               FlSpot(4,60),
               FlSpot(5,75),
               FlSpot(6,80),
               FlSpot(7,90),
               FlSpot(8,95),
               FlSpot(9,105),
               FlSpot(10,130),
               FlSpot(11,140),
               FlSpot(12,150),

             ]
           )
         ]
       )),
     );
   }
 }



class Recommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommended for you",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BuyAppPage()),
                    );

                  },
                  child: Text("See all",style: TextStyle(color: Colors.black54),
                  )
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyAppPage()),
                  );

                },
                  child: RecommendedItem(name: recommendedList[0].name,
                      subtitle: recommendedList[0].subtitle,
                      value:recommendedList[0].value,
                      icon:recommendedList[0].icon),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyAppPage()),
                  );

                },
                child: RecommendedItem(name: recommendedList[0].name,
                    subtitle: recommendedList[1].subtitle,
                    value:recommendedList[1].value,
                    icon:recommendedList[1].icon),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyAppPage()),
                  );

                },
                child: RecommendedItem(name: recommendedList[0].name,
                    subtitle: recommendedList[2].subtitle,
                    value:recommendedList[2].value,
                    icon:recommendedList[2].icon),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RecommendedItem extends StatelessWidget {
  final String name;
  final String subtitle;
  final String value;
  final String icon;
  RecommendedItem({this.name,this.subtitle,this.value,this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(width: 0.2)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width:60,
                height:40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(image: AssetImage(icon))
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Text(subtitle,style: TextStyle(color: Colors.black54),)
                  ],
                ),
              )
            ],
          ),
          Container(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),
            ),
          )
        ],
      ),
    );
  }
}


class Market extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Currency market",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
              Text("Open chart",style: TextStyle(color: Colors.black54),)
            ],
          ),
          SizedBox(height: 5,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Currency(currency: "EUR/USD",value: "14,321",),
                Currency(currency: "USD/GBP",value: "11,321",),
                Currency(currency: "USD/RUB",value: "10,321",)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Currency extends StatelessWidget {
  final String currency;
  final String value;
  Currency({this.currency,this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 120,
      height: 45,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Color(0xFF333333).withOpacity(0.14),
        blurRadius: 2,
        offset: Offset(0,2))],
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currency,style: TextStyle(color: Colors.black54),),
          SizedBox(height: 5,),
          Text(value,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }



  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}























