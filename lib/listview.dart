import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actionsIconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xfff8ccb7),
          title: Center(
              child: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          )),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: List.generate(10, (index) => ListViewItem()),
              )
            ],
          ),
        ));
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffe9e9e9)),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  'img/chair.jpg',
                  height: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Pest Control'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
