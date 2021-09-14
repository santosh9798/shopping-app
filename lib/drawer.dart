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
                  'icon/user.png',
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Santosh kumar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('user@domain.com')
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
              Navigator.pushNamed(context, '/home');
            },
            child: DrawerItem(
              label: "Explore",
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/featured');
            },
            child: DrawerItem(
              label: "Shop",
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(
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
              Navigator.pushNamed(context, '/gallery');
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
            onPressed: () {},
            child: Text('Profile'),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {},
            child: Text('Setting'),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {},
            child: Text('Loguot'),
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
