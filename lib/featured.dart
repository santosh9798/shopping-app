import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping/scrollable.dart';
import 'package:shopping/widgets/myappbar.dart';

import 'collection.dart';

class featured extends StatefulWidget {
  const featured({Key? key}) : super(key: key);

  @override
  State<featured> createState() => _featuredState();
}

class _featuredState extends State<featured> {
  int activeindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFF3F6),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              MyAppBar(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  activeindex = 0;
                                });
                              },
                              child: FeatureTabs(
                                  label: "Features",
                                  active: activeindex == 0 ? true : false)),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                activeindex = 1;
                              });
                            },
                            child: FeatureTabs(
                              label: "New",
                              active: activeindex == 1 ? true : false,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  activeindex = 2;
                                });
                              },
                              child: FeatureTabs(
                                  label: "Collection",
                                  active: activeindex == 2 ? true : false)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              activeindex == 0 ? FeaturePage() : Container(),
              activeindex == 2
                  ? Column(
                      children: List.generate(7, (index) => CollectionItem()),
                    )
                  : Container(),
            ],
          ),
        ));
  }
}

class FeaturePage extends StatelessWidget {
  const FeaturePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'The Classic',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Classic apperance '),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: Image.asset(
                        'img/chair.jpg',
                        width: 500,
                      ),
                    ),
                  )
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                'Best seller',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              // Spacer(
              //   flex: 1,
              // ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18, color: Colors.black),
                ),
                onPressed: () {},
                child: const Text(
                  'View all',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
        ScrollableItems(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                'Hand-picks',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              // Spacer(
              //   flex: 1,
              // ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18, color: Colors.black),
                ),
                onPressed: () {},
                child: const Text(
                  'View all',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                                'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=120&q=80'),
                          ),
                        )),
                      )),
            ),
          ),
        ),
        CarouselSlider(
            items: [
              SliderItem(),
              SliderItem2(),
            ],
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            )),
      ],
    );
  }
}

class FeatureTabs extends StatelessWidget {
  const FeatureTabs({Key? key, this.active = false, this.label})
      : super(key: key);
  final String? label;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$label',
      style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: active ? Colors.black : Colors.grey),
    );
  }
}

class SliderItem2 extends StatelessWidget {
  const SliderItem2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ]),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'The Classic',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Classic apperance '),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Image.asset(
                  'img/new.jpg',
                  width: 120,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )),
    );
  }
}

class SliderItem extends StatelessWidget {
  const SliderItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ]),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'The Classic',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Classic apperance '),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Image.asset(
                  'img/chair.jpg',
                  width: 120,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )),
    );
  }
}
