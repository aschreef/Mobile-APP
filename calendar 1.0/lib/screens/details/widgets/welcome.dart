import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class GetUserName extends StatelessWidget {
  final String documentId;

  GetUserName(this.documentId);
  @override
  Widget build(BuildContext context)  {
    CollectionReference users = FirebaseFirestore.instance.collection('Professor');

    return FutureBuilder<DocumentSnapshot>(
      future: _getUserData(documentId , users),
      builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot)  {

        if (snapshot.hasError) {
          return Text('Bienvenue ?');
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text('Bienvenue ??');
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Text("Bienvenue M. ${data['prenom']} ${data['nom']}");
        }

        return Text("loading");
      },
    );
  }
 

Future<DocumentSnapshot> _getUserData(String documentId ,CollectionReference users ) async {
    DocumentSnapshot snapshot = await users.doc(documentId).get();
    return snapshot;
  }

}