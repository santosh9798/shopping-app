import 'package:flutter/material.dart';
import 'package:shopping/signup.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 15),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, '/signup');
                        Navigator.of(context).push(_createRoute());
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text(
                      "Welcome Back!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [Text('Log back to your account')],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Your Email'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(), labelText: 'Password'),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle:
                          const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Forgot',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/featured');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 140, vertical: 14),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            child: Image.asset('img/shopping.jpg'),
          )
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, anotherAnimation) {
        return signup();
      },
      transitionDuration: Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        animation =
            CurvedAnimation(curve: Curves.easeInSine, parent: animation);
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      });
}
