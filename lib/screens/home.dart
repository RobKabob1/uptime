import 'package:flutter/material.dart';
import 'package:uptime/screens/reports.dart';
import 'package:uptime/screens/servers.dart';
import 'package:uptime/screens/account_setup.dart';

//TODO somewhere in here initialize the index and make sure it pulls in previous values
//Also add Ticker so that it's updating every X minutes from the database to pull in any recent pings

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget child;

    switch (_selectedIndex) {
      case 0:
        child = const AccountSetup(title: 'Account Setup');
        break;
      case 1:
        child = const Servers(title: 'Servers');
        break;
      case 2:
        child = const Reports(title: 'Reports');
        break;
      default:
        child = Container();
    }
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Reports',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
      ),
    );
  }
}
