

import 'package:flutter/material.dart';
import 'package:flutter_sample/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage())
              );
            },
            child: Text('ボタン')
        ),
      ),
    );
  }
}
