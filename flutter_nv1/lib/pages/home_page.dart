import 'package:flutter/material.dart';
import 'package:flutter_nv1/pages/pageViews/one_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottom = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            const UserAccountsDrawerHeader(
                accountName: Text("Danilo"),
                accountEmail: Text("DaniloSacranento@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("D"),
                  backgroundColor: Colors.greenAccent,
                )
             ),
             ListTile(
              title: Text("Page 1"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                 setState(() {
              indexBottom = 0;
            });
              } ,
              
             ),
              ListTile(
              title: Text("Page 2"),
              trailing: Icon(Icons.arrow_forward),
               onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                 setState(() {
              indexBottom = 1;
            });
                
               }
             ),
              ListTile(
              title: Text("Page 3"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                 setState(() {
              indexBottom = 2;
            });
               }
             )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnePage(),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottom,
          onTap: (int page) {
            setState(() {
              indexBottom = page;
            });
            _pageController.animateToPage(page,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Intem 1"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Intem 2"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Intem 3")
          ]),
    );
  }
}
