import 'package:flutter/material.dart';
import 'Inscription/InscriptionProf.dart';
import 'Inscription/InscriptionEtudiant.dart';
import 'Inscription/InscriptionAdmin.dart';

class InscriptionSelection extends StatefulWidget {
  const InscriptionSelection({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<InscriptionSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectionScreen(),
    );
  }
}

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Créer un compte en tant que :",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 44.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InscriptionEtudiant()));
              },
              fillColor: Color.fromARGB(255, 225, 136, 197),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Text("Un étudiant",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  )),
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              fillColor: Color.fromARGB(255, 225, 136, 197),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Text("Un professeur",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  )),
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InscriptionAdmin()));
              },
              fillColor: Color.fromARGB(255, 225, 136, 197),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              child: Text("Un admin centre",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
