import 'dart:js';

import 'package:calendar/constants/colors.dart';
import 'package:calendar/screens/home/home_login.dart';
import 'package:calendar/screens/home/widgets/centers.dart';
import 'package:calendar/screens/home/widgets/go_premium.dart';
import 'package:calendar/screens/home/widgets/tasks.dart';
import 'package:flutter/material.dart';

import '../details/profile_prof.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueLight,
      appBar: _buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Centers(),
                  ),
                );
              },
              child: GoPremium()),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            child: const Text(
              'Dashbord',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Tasks(),
            )),
        ],
      ),
      /*bottomNavigationBar: _buildBottonNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 0,
          backgroundColor: Colors.black,
          onPressed: () {},
          child: const Icon(Icons.add, size: 35)),*/
    );
  }

  Widget _buildBottonNavigationBar() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            )
          ]),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                  label: 'Home', icon: Icon(Icons.home_rounded)),
              BottomNavigationBarItem(
                  label: 'Person ', icon: Icon(Icons.person_rounded))
            ]),
      ),
    );
  }

  AppBar _buildAppBar(context) {
    return AppBar(
        backgroundColor: Colors.grey.withOpacity(0.1),
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              //margin: const EdgeInsets.only(left : 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserProfileprof()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/avatar.jpg'),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('Hi, Mr Professor ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        actions: [
          PopupMenuButton(
              onSelected: (value) {
                // handle the selected value
              },
              itemBuilder: (BuildContext context) {
                return [
                   PopupMenuItem(
                    value: 1,
                    child: TextButton(
                      onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomeLogIn(),));},
                      child: Text('Déconnexion'))
                  ),
                  
                ];
              },
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 40,
              ))
        ]);
  }
}
