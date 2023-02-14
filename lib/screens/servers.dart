import 'package:flutter/material.dart';

class Servers extends StatefulWidget {
  const Servers({super.key, required this.title});

  final String title;

  @override
  State<Servers> createState() => _ServersState();
}

class _ServersState extends State<Servers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(
          child: Text("banana"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.phonelink_setup_sharp),
              label: 'Server Setup',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.computer),
              label: 'Servers',
            ),
          ],
        ));
  }
}
