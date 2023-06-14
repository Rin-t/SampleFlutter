

import 'package:flutter/material.dart';
import 'package:flutter_sample/second_page.dart';

class FirstPage extends StatelessWidget {

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('first'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text) {
                this.text = text;
              },
              obscureText: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '入力してね'
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage(text))
                  );
                },
                child: Text('ボタン')
            ),
          ],
        ),
      ),
    );
  }
}
