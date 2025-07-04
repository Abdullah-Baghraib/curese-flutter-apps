import 'package:flutter/material.dart';

import '../helpers/helpers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo App'),
        ),
        body: Container(),
        floatingActionButton: Builder(
          builder: (ctx) {
            return FloatingActionButton(
              onPressed: () {
                builDatePicker(context);
              },
              child: const Icon(Icons.add),
            );
          },
        ),
      ),
    );
  }
}
