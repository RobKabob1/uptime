import 'package:flutter/material.dart';

class Servers extends StatefulWidget {
  const Servers({super.key, required String title});

  @override
  State<Servers> createState() => _ServersState();
}

class _ServersState extends State<Servers> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(9),
        children: <Widget>[
          Container(
            height: 50,
            color: Theme.of(context).colorScheme.primary,
            child: const Center(child: Text('Server 1 Placeholder')),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 50,
            color: Theme.of(context).colorScheme.primary,
            child: const Center(child: Text('Server 2 Placeholder')),
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Container(
            height: 50,
            color: Theme.of(context).colorScheme.primary,
            child: const Center(child: Text('Server 3 Placeholder')),
          ),
        ],
      ),
    );
  }
}
