import 'package:flutter/material.dart';
import 'package:online_shopping/profile_screen/profile.dart';
import 'package:online_shopping/screen/home/screen/cart_page.dart';
import 'package:online_shopping/screen/home/screen/notification.dart';
import 'package:online_shopping/screen/home/screen/tabbar.dart';
import 'package:online_shopping/screen/profile/main_profile.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPageIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var pages = [
    const TabBarProduct(),
    Cart(),
    FavoritePage(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        key: scaffoldKey,
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue[200],
            // surfaceTintColor: Colors.white
          ),
          child: NavigationBar(
            backgroundColor: Colors.transparent,
            //surfaceTintColor: Colors.white,
            animationDuration: const Duration(seconds: 1),
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              // const NavigationDestination(
              //   icon: Icon(Icons.people,),
              //   label: 'Company',
              // ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              NavigationDestination(
                // selectedIcon: Icon(Icons.bookmark),
                icon: Icon(Icons.favorite_outline),
                label: 'Favorite',
              ),
              NavigationDestination(
                // selectedIcon: Icon(Icons.bookmark),
                icon: Icon(Icons.person_outlined),
                label: 'profile',
              ),
            ],
          ),
        ),
        body: IndexedStack(
          index: currentPageIndex,
          children: pages,
        )
    );
  }
}
