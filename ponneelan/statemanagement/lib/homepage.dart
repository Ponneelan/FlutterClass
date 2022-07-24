import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provider_controller.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('${Provider.of<counter>(context, listen: true).Finalcount}')
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (() {
              Provider.of<counter>(context, listen: false).decreament();
            }),
            child: const Text('-'),
          ),
          FloatingActionButton(
            onPressed: (() {
              Provider.of<counter>(context, listen: false).setZero();
            }),
            child: const Text('0'),
          ),
          FloatingActionButton(
            onPressed: (() {
              Provider.of<counter>(context, listen: false).increment();
            }),
            child: const Text('+'),
          ),
        ],
      ),
    ));
  }
}
