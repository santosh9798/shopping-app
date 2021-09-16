import 'package:flutter/material.dart';

class secondsplash extends StatelessWidget {
  const secondsplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.network(
            'https://images.unsplash.com/photo-1566921895456-1cee64031c33?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=376&q=80',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover),
        Positioned(
          top: 70,
          left: 20,
          child: Text(
            'Home Craft',
            style: TextStyle(
                fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          top: 120,
          left: 20,
          child: Text(
            'Lorem ipsum dolor sit amet',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Positioned(
          bottom: 40,
          left: 30,
          child: ElevatedButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.orangeAccent,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 110, vertical: 14),
              child: Text(
                'Start Shopping',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
