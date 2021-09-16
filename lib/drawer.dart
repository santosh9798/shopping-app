import 'package:flutter/material.dart';
import 'package:shopping/widgets/myappbar.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8ccb7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: MyAppBar(
              isdrawer: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Image.asset(
                  'img/user.png',
                  height: 110,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rajnikant Shivaji',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('user@domain.com'),
                      SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            child: DrawerItem(
              label: "Explore",
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/featured');
            },
            child: DrawerItem(
              label: "Shop",
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                '/collection',
              );
            },
            child: DrawerItem(
              label: "Collection",
            ),
          ),
          DrawerItem(
            label: "Blog",
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/gallery');
            },
            child: DrawerItem(
              label: "Gallery",
            ),
          ),
          DrawerItem(
            label: "About",
          ),
          Spacer(
            flex: 1,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/profile');
            },
            child: Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {},
            child: Text(
              'Logout',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, this.label}) : super(key: key);

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Text(
        '$label',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
      ),
    );
  }
}
