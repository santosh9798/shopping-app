import 'package:flutter/material.dart';
import 'package:shopping/widgets/myappbar.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyAppBar(),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Profile',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset(
                  'img/user.png',
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rajnikant Shivaji',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                      Text(
                        'User@domain.com',
                        style: TextStyle(letterSpacing: 1),
                      ),
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
          ProfileItem(name: "Location"),
          ProfileItem(name: "Change password"),
          ProfileItem(name: "Shipping"),
          ProfileItem(name: "Payment"),
          SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'New Features',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'App notification',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Change Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({Key? key, this.name}) : super(key: key);
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Text(
            '$name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Spacer(
            flex: 1,
          ),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
