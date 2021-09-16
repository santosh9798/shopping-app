import 'package:flutter/material.dart';

class ScrollableItems extends StatelessWidget {
  const ScrollableItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Row(
          children: List.generate(
              10,
              (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/productdesc');
                        },
                        child: Image.network(
                            'https://images.unsplash.com/photo-1547587091-f883cf8f0c12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=120&q=80'),
                      ),
                    )),
                  )),
        ),
      ),
    );
  }
}
