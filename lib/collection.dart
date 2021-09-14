import 'package:flutter/material.dart';
import 'package:shopping/widgets/myappbar.dart';

class collection extends StatelessWidget {
  const collection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: MyAppBar(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'Collection',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: List.generate(7, (index) => CollectionItem()),
            )
          ],
        ),
      ),
    );
  }
}

class CollectionItem extends StatelessWidget {
  const CollectionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.network(
              'https://images.unsplash.com/photo-1616464916265-68fc457bdc70?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=574&q=80',
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 50,
              left: 25,
              child: Text(
                'Modern Dinning',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
          Positioned(
              bottom: 30,
              left: 25,
              child: Text(
                'Lorem ipsum dolor sit amet consectetur',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
