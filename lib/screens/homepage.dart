import 'package:flutter/material.dart';
import 'package:uptime/screens/servers.dart';
import 'package:uptime/screens/accountsetup.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget child = Container();

    switch (_selectedIndex) {
      case 0:
        child = const AccountSetup(title: 'Account Setup');
        break;
      case 1:
        child = const Servers(title: 'Servers');
        break;
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SizedBox.expand(child: child),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.phonelink_setup_sharp),
              label: 'Account Setup',
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
