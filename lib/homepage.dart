import 'package:app_mart/keranjang.dart';
import 'package:app_mart/nameprd.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Krj(),
    Name(),
  ];
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      // Check the index and navigate to a new page
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Krj()),
        );
      }
       if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Name()),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    double globalWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(left: 20, top: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  ),
                )),
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(right: 30, top: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: (globalWidth / 4.9),
                        height: (globalWidth / 5.5),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 10,
                                offset: Offset(2, 3)),
                          ],
                          border:
                              Border.all(color: Colors.blueAccent, width: 10),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/burger-removebg-preview.png")),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            "All",
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: (globalWidth / 4.9),
                        height: (globalWidth / 5.5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 10,
                                offset: Offset(2, 3)),
                          ],
                          border: Border.all(color: Colors.white, width: 10),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/burger-removebg-preview.png")),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            "Food",
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: (globalWidth / 4.9),
                        height: (globalWidth / 5.5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 10,
                                offset: Offset(2, 3)),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("images/teh botol sosro.jpg")),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            "Water",
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              color: Colors.grey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                    offset: Offset(2, 3)),
                              ],
                              border: Border.all(
                                color: Colors.white,
                                width: 15,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: (globalWidth / 2.9),
                                  height: (globalWidth / 2.9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/burger-removebg-preview.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: Text(
                                      "Burger King Medium",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(child: Text("Rp 50.000")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                    offset: Offset(2, 3)),
                              ],
                              border: Border.all(
                                color: Colors.white,
                                width: 15,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: (globalWidth / 2.9),
                                  height: (globalWidth / 2.9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/burger-removebg-preview.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: Text(
                                      "Burger King Medium",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(child: Text("Rp 50.000")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  // Row 2                        
                  Container(
                    margin: EdgeInsets.only(top: 10,),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                    offset: Offset(2, 3)),
                              ],
                              border: Border.all(
                                color: Colors.white,
                                width: 15,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: (globalWidth / 2.9),
                                  height: (globalWidth / 2.9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/burger-removebg-preview.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: Text(
                                      "Burger King Medium",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(child: Text("Rp 50.000")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                    offset: Offset(2, 3)),
                              ],
                              border: Border.all(
                                color: Colors.white,
                                width: 15,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              
                              children: [
                                Container(
                                  width: (globalWidth / 4),
                                  height: (globalWidth / 2.9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/teh botol sosro.jpg",
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                 
                                  children: [
                                    Container(

                                        width: (globalWidth / 2.8),
                                        child: Text(
                                          "   Teh Botol Sosro",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(child: Text("Rp 4.000")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  /// Row 3
               Container(
                    margin: EdgeInsets.only(top: 10,),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                    offset: Offset(2, 3)),
                              ],
                              border: Border.all(
                                color: Colors.white,
                                width: 15,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: (globalWidth / 2.9),
                                  height: (globalWidth / 2.9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/burger-removebg-preview.png",
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: Text(
                                      "Burger King Medium",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(child: Text("Rp 50.000")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                    offset: Offset(2, 3)),
                              ],
                              border: Border.all(
                                color: Colors.white,
                                width: 15,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              
                              children: [
                                Container(
                                  width: (globalWidth / 4),
                                  height: (globalWidth / 2.9),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "images/teh botol sosro.jpg",
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                 
                                  children: [
                                    Container(

                                        width: (globalWidth / 2.8),
                                        child: Text(
                                          "   Teh Botol Sosro",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(child: Text("Rp 4.000")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_outlined),
            label: 'Data',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent[800],
        onTap: _onItemTapped,
      ),
        );
  }
}
  
