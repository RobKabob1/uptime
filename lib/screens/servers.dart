import 'package:flutter/material.dart';

class Servers extends StatefulWidget {
  const Servers({super.key, required this.title});

  final String title;

  @override
  State<Servers> createState() => _ServersState();
}

class _ServersState extends State<Servers> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(
          child: Text("Servers"),
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.cyan,
          onTap: _onItemTapped,
        ));
  }
}
