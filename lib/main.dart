import 'package:ecommerce_app/pages/cart.dart';
import 'package:ecommerce_app/pages/explore.dart';
import 'package:ecommerce_app/pages/profile.dart';
import 'package:ecommerce_app/pages/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  List<Widget> pages = [const ExplorePage(), const SearchPage(), const CartPage(), const ProfilePage()];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) => setState(() {
          // _selectedPage = index;
        }),
        controller: _pageController,
        children: [...pages],
      ),
    );
  }
}
