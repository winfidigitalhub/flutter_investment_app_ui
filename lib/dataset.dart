import 'package:flutter/material.dart';

class CardData{
  final String cardType;
  final String balance;
  final String date;
  final String number;
  final Color color;
  final String image;

  CardData({this.balance, this.date, this.number, this.color,this.image,this.cardType});
}

List<CardData> cards = [
  CardData(
    cardType: 'Total Equity',
    balance: '2,832',
    date: '12/26',
    number:'5262',
    color: Colors.green,
    image: "assets/mastercard.png"
  ),
  CardData(
      cardType: 'Total Income',
      balance: '632',
      date: '01/23',
      number:'5737',
      color: Colors.purple,
      image: "assets/mastercard.png"

  ),
  CardData(
      cardType: 'Deposit Wallet',
      balance: '363',
      date: '07/24',
      number:'6315',
      color: Colors.blue,
      image: "assets/mastercard.png"

  )
];

class LastInvestmentData{
  final int value;
  final String name;
  LastInvestmentData({this.value,this.name});
}

List<LastInvestmentData> lastInvestment=[
  LastInvestmentData(value: 460,name: "Poultry Farming"),
  LastInvestmentData(value: 600, name: "Tesla, Inc. ao"),
  LastInvestmentData(value: 200, name: "Twitter, Inc. ao")
];

class Recommended{
  final String name;
  final String subtitle;
  final String icon;
  final String value;
  Recommended({this.name, this.subtitle, this.icon, this.value});
}

List<Recommended> recommendedList=[
  Recommended(name: "Netflix, Inc. ao",subtitle: "Blu-ray Disk, DVD",value: "+189%",icon: "assets/netflix.jpg"),
  Recommended(name: "Ozon, Inc. ao",subtitle: "Online store",value: "+173%",icon: "assets/ozon.jpg"),
  Recommended(name: "Tesla, Inc. ao",subtitle: "Automotive industry",value: "+189%",icon: "assets/tesla.jpg"),
];
