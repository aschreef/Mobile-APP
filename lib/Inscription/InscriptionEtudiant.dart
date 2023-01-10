import 'package:flutter/material.dart';

class InscriptionEtudiant extends StatefulWidget {
  const InscriptionEtudiant({ Key? key}) : super(key:key);

  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State <InscriptionEtudiant> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: InscriptionEtudiantScreen(),
    );
  }
}

class InscriptionEtudiantScreen extends StatefulWidget {
  const InscriptionEtudiantScreen({Key? key}) : super(key: key);

  @override 
  _InscriptionEtudiantScreenState createState() => _InscriptionEtudiantScreenState();
}

class _InscriptionEtudiantScreenState extends State <InscriptionEtudiantScreen> {
  @override 
  Widget build(BuildContext context){

    return Padding(
      padding: const EdgeInsets.all(5.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Créer un compte en tant que un étudiant:",
            style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold), 
          ),

          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Nom:",
            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), 
          ),
          const TextField(
          ),

           const SizedBox(
             height: 5.0,
          ),
          const Text(
            "Prenom:",
            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), 
          ),
          const TextField(
          ),
          

          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Nom d'utilisateur:",
            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), 
          ),
          const TextField(
          ),

          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Email:",
            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), 
          ),
          const TextField(
          ),
        

          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Mot de passe:",
            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), 
          ),
          const TextField(
            obscureText: true ,

            ),

          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Téléphone:",
            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), 
          ),
          const TextField(
          ),

          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Localisation:",
            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), 
          ),
          const TextField(
          ),
          
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            "Niveau d'étude:",
            style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), 
          ),
          const TextField(
          ),
                              

          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color(0xFF0069FE),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
              onPressed: () {},
              child:Text("S'inscrire",
              style:TextStyle(
                color:Colors.white,
                fontSize: 18.0,
              )),
              ),
              ),

          const SizedBox(
            height: 5.0,
          ),

        ]
      ),
    );
  }
}
