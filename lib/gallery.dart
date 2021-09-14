import 'package:flutter/material.dart';
import 'package:shopping/widgets/myappbar.dart';

class gallery extends StatelessWidget {
  const gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.network(
          "https://images.unsplash.com/photo-1544030288-e6e6108867f6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        MyAppBar(),
        Row(
          children: [Image.asset('img/chair.jpg'), Text('data')],
        )
      ],
    ));
  }
}
