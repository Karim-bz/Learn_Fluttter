import 'package:first_app/provider/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // if we change listen to true all the page will regenerate
    CounterState counterState =
        Provider.of<CounterState>(context, listen: false);
    print('build....');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Provider Page"),
      ),
      body: Consumer<CounterState>(
        // only this Widget well regenerate
        builder: (context, counterState, child) {
          /// after using Provider State Management only this part will be regenerate
          /// without the need of regenerate all widgets when using SetState(){}
          /// you can check console
          print('regenerate Text...');
          return Center(
            child: Text(
              "Counter >> ${counterState.counter}",
              style: Theme.of(context).textTheme.headline3,
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "add_btn",
            child: const Icon(Icons.add),
            onPressed: () {
              counterState.increment();
            },
          ),
          const SizedBox(width: 6),
          FloatingActionButton(
            heroTag: "remove_btn",
            child: const Icon(Icons.remove),
            onPressed: () {
              counterState.decrement();
            },
          )
        ],
      ),
    );
  }
}
