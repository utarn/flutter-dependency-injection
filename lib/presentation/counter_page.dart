import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_change_notifier.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App 💉'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterChangeNotifier>(
              builder: (context, counter, child) {
                return Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headline,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Provider.of<CounterChangeNotifier>(context).increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
