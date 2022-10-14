import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j5store/pages/home/chat_page.dart';
import 'package:j5store/pages/home/home_page.dart';
import 'package:j5store/pages/home/profile_page.dart';
import 'package:j5store/pages/home/whistlist_page.dart';
import 'package:j5store/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;
  Widget cartButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: Image.asset(
        'assets/chart_icon.png',
        width: 20,
      ),
      backgroundColor: secondaryColor,
    );
  }

  Widget bottomNav() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
      child: BottomAppBar(
        color: bottomNavColor,
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: (value) {
              setState(() {
                currentPage = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: bottomNavColor,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Icon(
                    CupertinoIcons.home,
                    color:
                        currentPage == 0 ? primaryColor : innactiveNavbarColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Icon(
                    CupertinoIcons.bubble_left_bubble_right,
                    color:
                        currentPage == 1 ? primaryColor : innactiveNavbarColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Icon(
                    CupertinoIcons.heart,
                    color:
                        currentPage == 2 ? primaryColor : innactiveNavbarColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Icon(
                      CupertinoIcons.person,
                      color: currentPage == 3
                          ? primaryColor
                          : innactiveNavbarColor,
                    ),
                  ),
                  label: ''),
            ]),
      ),
    );
  }

  Widget body() {
    switch (currentPage) {
      case 0:
        return HomePage();
      case 1:
        return ChatPage();
      case 2:
        return WishListPage();
      case 3:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNav(),
      body: body(),
    );
  }
}
