import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/myappbar.dart';

class gallery extends StatelessWidget {
  const gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.network(
          "https://images.unsplash.com/photo-1611269154421-4e27233ac5c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=401&q=80",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        MyAppBar(),
        Positioned(
          top: 100,
          left: 15,
          child: Text(
            'Gallery',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
          ),
        ),
        Positioned(
          bottom: 55,
          left: 10,
          right: 0,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: List.generate(7, (index) => Galleryitem()))),
        )
      ],
    ));
  }
}

class Galleryitem extends StatelessWidget {
  const Galleryitem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width - 64,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: Image.asset(
                'img/new.jpg',
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chair',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                      "Lorem ipsum dolor sit amet consectetur, adipisicing elit.")
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
