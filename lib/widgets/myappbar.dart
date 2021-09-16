import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key, this.isdrawer = false}) : super(key: key);
  final bool isdrawer;

  @override
  Widget build(BuildContext context) {
    print(isdrawer);
    return Column(
      children: [
        Container(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 80),
              isdrawer
                  ? InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/listview');
                      },
                      child: Container(
                        child: Image.asset(
                          'img/setting.png',
                          height: 25,
                        ),
                      ),
                    )
                  : Container(),
              Spacer(
                flex: 1,
              ),
              Image.asset(
                'icon/cart.png',
                height: 26,
              ),
              SizedBox(width: 25),
              isdrawer
                  ? InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/drawer');
                      },
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close)))
                  : InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/drawer');
                      },
                      child: Image.asset(
                        'icon/list.png',
                        height: 26,
                      ),
                    ),
            ],
          ),
        )),
      ],
    );
  }
}
