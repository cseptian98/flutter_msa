import 'package:flutter/material.dart';
import 'package:flutter_msa/app/pages/category/category_view.dart';
import 'package:flutter_msa/app/pages/home/home_view.dart';
import 'package:flutter_msa/app/pages/messages/messages_view.dart';
import 'package:flutter_msa/app/pages/user/user_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomeView(),
    const CategoryView(),
    const MessageView(),
    const UserView(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black87,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedItemColor: Colors.grey,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              label: "Home", icon: const Icon(Icons.home)),
          const BottomNavigationBarItem(
              label: "Category", icon: Icon(Icons.work)),
          const BottomNavigationBarItem(
              label: "Message", icon: Icon(Icons.email)),
          const BottomNavigationBarItem(
              label: "Profile", icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}
