import 'dart:html';

import 'package:calendar/constants/colors.dart';
import 'package:calendar/screens/details/widgets/info_card.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/services.dart';

const email = "me.NOORA@gmail.com";
const phone = "26226622"; // not real number :)
const location = "Monastir, Tunisia";

class UserProfileprof extends StatelessWidget {
  const UserProfileprof({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: kBlueLight,
        elevation: 0.0,
       
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                
                child: Text('Sign out'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(1.0),
                  primary:kRedLight ,
                  onPrimary: Color.fromARGB(255, 4, 4, 4),
                ),
                onPressed: () {
                  SystemNavigator.pop();
                },
              ),
            ),
          ),
        ],
      ),
      body: Container(
      
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color:kBlueLight,
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/IM.JPG'),
            ),
             const SizedBox(height: 10.0),
            const Text(
              "Noora Samir",
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 14, 14, 14),
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Professor",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Color.fromARGB(255, 82, 96, 105),
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Source Sans Pro"),
            ),
             const SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            InfoCard(
              text: phone, icon: Icons.phone,
             onPressed: () async {}),
            InfoCard(
                text: location,
                icon: Icons.location_city,
                onPressed: () async {}),
            InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
          ],
        ),
      ));
}