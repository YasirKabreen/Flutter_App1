import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// void addstore(yasir) {
//   yasir.collection('yasir').add({'name': 'fatima'});
// }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
  getData() async {
    CollectionReference yasir = FirebaseFirestore.instance.collection('yasir');
    QuerySnapshot yas = await yasir.get();
    List<QueryDocumentSnapshot<Object?>> yaslist = yas.docs;
    yaslist.forEach((element) {
      print(element.data());
      print('================================================================');
    });
  }

  void initstate() {
    getData();
    super.initstate();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final yasir = FirebaseFirestore.instance;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text('hi my name is firestoore')),
          // ElevatedButton(
          //     onPressed: () {
          //       addstore(yasir);
          //     },
          //     child: Text('hi my name is firestoore'))
        ],
      ),
    );
  }
}
