import 'dart:math';
import 'package:flutter/material.dart';
import 'package:test_application/resourse.dart';
import 'package:test_application/view/account_view.dart';
import 'package:test_application/view/setting_view.dart';
import 'package:test_application/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  final List _widgetOptions = [
    SettingView(),
    _bodyBuild(),
    AccountView(),
  ];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: const Text('Мои коды'),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notification_add))
          ],
        ),
        body: SingleChildScrollView(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: Container(
            height: 100,
            color: Colors.black,
            child: BottomNavigationBar(
              fixedColor: Colors.white,
              backgroundColor: Colors.black12,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              unselectedItemColor: Colors.white,
              selectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 30.0,
                    ),
                    label: ('Настройки')),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.qr_code_2,
                      size: 30.0,
                    ),
                    label: ('Мои коды')),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_box,
                      size: 30.0,
                    ),
                    label: ('Аккаунт'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

Widget _bodyBuild() {
  return Column(
    children: [
      Container(
        height: 50.0,
        margin: const EdgeInsets.symmetric(vertical: 30.0),
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          controller: ScrollController(
              keepScrollOffset: true, initialScrollOffset: 1.0),
          children: <Widget>[
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'Все коды',
                style: TextStyle(color: Colors.white),
              ),
            ),
            otstup(),
            OutlinedButton(
              onPressed: () {},
              style: style,
              child: const Text(
                'Избранное',
                style: textStyle,
              ),
            ),
            otstup(),
            OutlinedButton(
              onPressed: () {},
              style: style,
              child: const Text(
                'Машина',
                style: textStyle,
              ),
            ),
            otstup(),
            OutlinedButton(
              onPressed: () {},
              style: style,
              child: const Text(
                'Добавить коды',
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 20,
        width: double.maxFinite,
      ),
      Container(
        alignment: Alignment.center,
        width: 350.0,
        height: 450.0,
        child: ListView.builder(
          itemCount: myCode1.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
              child: Card(
                color: (colorArray[index]).withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 77.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: (colorArray[index]).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: const Icon(
                            Icons.qr_code,
                            size: 24.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              myCode1[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}

SizedBox otstup() {
  return const SizedBox(width: 10.0);
}

final style = OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
  side: const BorderSide(width: 2, color: Colors.black),
);
const textStyle = TextStyle(color: Colors.black);
