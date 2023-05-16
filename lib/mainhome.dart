import 'package:app4/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          GestureDetector(
              child: Icon(
                Icons.logout,
              ),
              onTap: () {
                FirebaseAuth.instance.signOut();
              }),
          SizedBox(
            width: 20,
          )
        ],
        title: Row(
          children: const [
            Icon(
              Icons.account_balance,
            ),
            Text('  Kabreen App')
          ],
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 2,
              width: double.infinity,
            ),
            Text('i did it '),
            ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Text('Sign Out'))
          ]),
    );
  }
}
