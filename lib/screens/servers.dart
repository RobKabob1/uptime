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
        padding: EdgeInsets.all(9),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.cyan[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.cyan[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.cyan[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}
