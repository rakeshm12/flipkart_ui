import 'package:example/drawer_list.dart';
import 'package:example/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Container(
                  color: const Color(0xff005bff),
                  child: const ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.facebook,
                      size: 40,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                const DrawerList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black12,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.shop),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.bolt),
              label: 'SuperCoin',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.view_comfy_rounded, size: 40),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.ten_k_sharp),
              label: 'Credit',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.gamepad, size: 40),
              label: 'Game Z... ',
            ),
          ],
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xff005bff),
          elevation: 0,
          title: ListTile(
            contentPadding: const EdgeInsets.only(right: 60),
            title: const Text(
              'Flipkart',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            subtitle: Row(
              children: const [
                Text(
                  'Explore',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'Plus✨',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.notifications,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.shopping_cart,
                    size: 20.0,
                  ),
                  SizedBox(width: 10.0),
                  Text('Sign In')
                ],
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              color: const Color(0xff005bff),
              width: double.infinity,
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 10.0,
                  width: 30.0,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 20.0,
                              color: Colors.grey[700],
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              'Search for Products, Brands and More',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            const SizedBox(width: 72.0),
                            Icon(
                              Icons.mic,
                              size: 20.0,
                              color: Colors.lightBlue[700],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 61.0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Categories(
                        child: CircleAvatar(
                          backgroundColor: Color(0xff005bff),
                          child: Icon(Icons.menu_outlined),
                        ),
                        title: 'All Categories'),
                    SizedBox(
                      width: 1.0,
                    ),
                    Categories(
                        child: CircleAvatar(
                          child: Icon(Icons.menu_outlined),
                        ),
                        title: 'Mobiles'),
                    SizedBox(
                      width: 1.0,
                    ),
                    Categories(
                        child: CircleAvatar(
                          child: Icon(Icons.menu_outlined),
                        ),
                        title: 'All Categories'),
                    SizedBox(
                      width: 1.0,
                    ),
                    Categories(
                        child: CircleAvatar(
                          child: Icon(Icons.menu_outlined),
                        ),
                        title: 'All Categories'),
                    SizedBox(
                      width: 1.0,
                    ),
                    Categories(
                        child: CircleAvatar(
                          child: Icon(Icons.menu_outlined),
                        ),
                        title: 'All Categories'),
                    SizedBox(
                      width: 1.0,
                    ),
                    Categories(
                        child: CircleAvatar(
                          child: Icon(Icons.menu_outlined),
                        ),
                        title: 'All Categories'),
                    SizedBox(
                      width: 1.0,
                    ),
                    Categories(
                        child: CircleAvatar(
                          child: Icon(Icons.menu_outlined),
                        ),
                        title: 'All Categories'),
                    SizedBox(
                      width: 1.0,
                    ),
                    Categories(
                        child: CircleAvatar(
                          child: Icon(Icons.menu_outlined),
                        ),
                        title: 'All Categories'),
                  ],
                ),
              ),
            ),
            Container(
              width: 400.0,
              height: 200.0,
              color: Colors.blueAccent,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: images(),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            const Divider(
              color: Colors.black12,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Recently Viewed Stores',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    RecentViews(
                        image: 'assets/category.png', caption: 'something'),
                    SizedBox(
                      width: 10.0,
                    ),
                    RecentViews(
                        image: 'assets/category.png', caption: 'something'),
                    SizedBox(
                      width: 10.0,
                    ),
                    RecentViews(
                        image: 'assets/category.png', caption: 'something'),
                    SizedBox(
                      width: 10.0,
                    ),
                    RecentViews(
                        image: 'assets/category.png', caption: 'something'),
                    SizedBox(
                      width: 10.0,
                    ),
                    RecentViews(
                        image: 'assets/category.png', caption: 'something'),
                    SizedBox(
                      width: 10.0,
                    ),
                    RecentViews(
                        image: 'assets/category.png', caption: 'something'),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
            ),
            Caption(
              title: 'Suggested for You',
              subtitle: 'Inspired by Your Interest',
              trail: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        left: 10, right: 10, top: 5, bottom: 5))),
                onPressed: () {},
                child: const Text('View All  >'),
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
            ),
            const ItemWidget(
              topImage: 'assets/category.png',
              bigImage: 'assets/category.png',
              bottomImage: 'assets/category.png',
            ),
            const Divider(
              color: Colors.blueGrey,
            ),
            Caption(
              title: 'Discounts for You',
              subtitle: '',
              trail: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                ),
              ),
            ),
            const ItemWidget(
              topImage: 'assets/category.png',
              bigImage: 'assets/category.png',
              bottomImage: 'assets/category.png',
            ),
          ],
        ),
      ),
    );
  }
}
