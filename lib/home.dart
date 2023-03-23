import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_theme/blur_container.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  initState() {
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.6),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlurContainer(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        EasyDynamicThemeSwitch(),
                        const Text('EasyDynamicThemeSwitch'),
                      ],
                    ),
                  ),
                ],
              ),
              BlurContainer(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'You have pushed the button this many times:',
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child:
        Icon(Icons.add, color: Theme.of(context).textTheme.button?.color),
      ),
    );
  }
}