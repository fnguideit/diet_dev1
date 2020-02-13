import 'package:flutter/material.dart';
import 'fast_status.dart';
import 'fast_history.dart';
import 'fast_weight.dart';
import 'setting.dart';

class HomeController extends StatefulWidget {
  @override
  _HomeControllerState createState() =>
      _HomeControllerState();
}

class _HomeControllerState
    extends State<HomeController> {
  final List<Widget> pages = [
    FastStatus(
      key: PageStorageKey('Page1'),
    ),
    FastHistory(
      key: PageStorageKey('Page2'),
    ),
    FastWeight(
      key: PageStorageKey('Page3'),
    ),
    Setting(
      key: PageStorageKey('Page4'),
    ),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  int _selectedIndex = 0;

  Widget _bottomNavigationBar(int selectedIndex) => BottomNavigationBar(
    onTap: (int index) => setState(() => _selectedIndex = index),
    type: BottomNavigationBarType.fixed,
    currentIndex: selectedIndex,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('단식설정')),
      BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('히스토리')),
      BottomNavigationBarItem(icon: Icon(Icons.alarm), title: Text('몸무게')),
      BottomNavigationBarItem(icon: Icon(Icons.album), title: Text('환경설정')),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: pages[_selectedIndex],
        bucket: bucket,
      ),
    );
  }
}