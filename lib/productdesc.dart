import 'package:flutter/material.dart';
import 'package:shopping/scrollable.dart';
import 'package:shopping/widgets/myappbar.dart';

class productdesc extends StatelessWidget {
  const productdesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF3F6),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('img/chair.jpg'),
                Text(
                  'Furnitures',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
                ),
                Positioned(top: 0, left: 0, right: 0, child: MyAppBar()),
                Positioned(
                    top: 45,
                    left: 15,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back)))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60, top: 26, left: 16),
              child: Text(
                '"Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste aut corporis quia in, similique repudiandae quo cum consequuntu"',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 36, right: 16),
              child: Text(
                '"Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste aut corporis quia in, similique repudiandae quo cum consequunt  Iste aut corporis quia in, similique repudiandae quo cum consequuntu"',
                style: TextStyle(color: Colors.grey, fontSize: 14, height: 1.5),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    'Related design',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.amber),
                  )
                ],
              ),
            ),
            ScrollableItems(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    'New design',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.amber),
                  )
                ],
              ),
            ),
            ScrollableItems()
          ],
        ),
      ),
    );
  }
}
