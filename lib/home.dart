import 'package:flutter/material.dart';
import 'package:shopping/widgets/myappbar.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFF3F6),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            MyAppBar(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Image.asset(
                            'icon/living-room.png',
                            height: 55,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text('Living Room'),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Image.asset('icon/bed.png'),
                          height: 55,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(''),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Image.asset('icon/office-chair.png'),
                          height: 55,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(''),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Image.asset(
                            'icon/bath.png',
                            height: 55,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(''),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Image.asset('icon/lamp.png'),
                          height: 55,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(''),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    '100 Products',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  DropdownButton<String>(
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          'Popular',
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'icon/view.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'icon/square.png',
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 12,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(
                    10,
                    (index) => Card(
                      child: Column(
                        children: [
                          Image.network(
                              'https://images.unsplash.com/photo-1506898667547-42e22a46e125?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c29mYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=500&q=60'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'New Trend ${index + 1}',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Rs ${(index + 1) * 1000}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ]),
        ));
  }
}
