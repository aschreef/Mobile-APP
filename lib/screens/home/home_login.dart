
import 'package:calendar/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../InscriptionSelection.dart';







class HomeLogIn extends StatefulWidget {
  const HomeLogIn({ Key? key}) : super(key:key);

  @override 
  _HomeLogInState createState() => _HomeLogInState();
}

class _HomeLogInState extends State <HomeLogIn> {
  
//Init Firebase app
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
}
  @override 
  Widget build(BuildContext context) {
    return Scaffold(

      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.done){
            return LoginScreen();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override 
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State <LoginScreen> {
  //Login function
  static Future<User?> loginUsingEmailPassword({required String email,required String password,required BuildContext context})async{
    FirebaseAuth auth = FirebaseAuth.instance ;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        print("No user found for that email");
      }
    }
    return user;
  }

  @override 
  Widget build(BuildContext context){
    //create the textfield controller
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.jpg'),
          const Text(
            "Bienvenue",
            style: TextStyle(color: Colors.black, fontSize: 44.0, fontWeight: FontWeight.bold), 
          ),
          const SizedBox(
            height: 44.0,
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress ,
            decoration: const InputDecoration(
              hintText: "Nom d'utilisateur ou e-mail",
              prefixIcon: Icon(Icons.mail,color:Colors.black),
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true ,
            decoration: const InputDecoration(
              hintText: "Mot de passe",
              prefixIcon: Icon(Icons.lock,color:Colors.black),
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: const Color(0xFF0069FE),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
              onPressed: () async {
                //let's test the app
                
                User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
                print(user);
                if (user!=null){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> HomePage()));
                }
              },
              child:const Text("Se connecter",
              style:TextStyle(
                color:Colors.white,
                fontSize: 18.0,
              )),
              ),
              ),
          const SizedBox(
            height: 50.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> InscriptionSelection()
                ),
              );
            },
              fillColor: Color(0xFF0069FE),
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
              
              child:Text("S'inscrire",
              style:TextStyle(
                color:Colors.white,
                fontSize: 18.0,
              )),
              ),
              ),
          
        ],
      ),
    );
  }
}