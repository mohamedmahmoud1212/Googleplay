import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabat = [
    "For you",
    "Top charts",
    "Premium",
    "Hamada",
    "Var",
    "El Lap",
    "hi"
  ];
  List img = [
    "assets/unnamed.png",
    "assets/jp.konami.pesam-d40e5496-f971-40ce-9884-15a72db864c4_512x512.webp",
    "assets/images.jpeg",
    "assets/download 2.webp",
    "assets/download (2).webp",
    "assets/download.webp",
    "assets/download.jpeg",
    "assets/com.rovio.baba.icon.2024-06-25-06-24-11.png"
  ];
  List text = [
    "Pupg mobile",
    "Efootball 2024",
    "Candy Crush",
    "Pupg mobile",
    "Candy crush",
    "Efootball 2024",
    "Need for speed",
    "angry birds"
  ];
  List rate = ["4.8", "3.5", "5", "4", "3.9", "4.3", "4.4", "4.7"];
  List desc = [
    "Action,fight,Tpv,gifts",
    "Sport,football",
    "Casual,puzzle",
    "Action,fight,gifts",
    "Casual,puzzle",
    "Sport,football",
    "Race,Sport,Cars",
    "Action,Causal"
  ];

  int x = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 8, right: 8, bottom: 10),
        child: GNav(
            padding: EdgeInsets.all(20),
            tabBorderRadius: 45,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            tabs: [
              GButton(
                backgroundColor: HexColor("#125e84"),
                textColor: HexColor("#c3e8fe"),
                iconActiveColor: HexColor("#c3e8fe"),
                style: GnavStyle.google,
                icon: Icons.gamepad,
                iconColor: Colors.white,
                text: "Games",
              ),
              GButton(
                backgroundColor: HexColor("#125e84"),
                textColor: HexColor("#c3e8fe"),
                iconActiveColor: HexColor("#c3e8fe"),
                style: GnavStyle.google,
                icon: Icons.apps,
                iconColor: Colors.white,
                text: "Apps",
              ),
              GButton(
                backgroundColor: HexColor("#125e84"),
                textColor: HexColor("#c3e8fe"),
                iconActiveColor: HexColor("#c3e8fe"),
                style: GnavStyle.google,
                icon: Icons.book_outlined,
                iconColor: Colors.white,
                text: "Books",
              )
            ]),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: UnderlineInputBorder(borderSide: BorderSide.none),
              suffixIcon: Icon(Icons.mic, color: Colors.white),
              prefixIcon: Icon(Icons.search, color: Colors.white),
              label: Text(
                "Search apps",
                style: TextStyle(color: Colors.white),
              ),
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: tabat.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        x = index;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tabat[index],
                          style: TextStyle(
                              color: x == index ? Colors.blue : Colors.white,
                              fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Stack(
                          children: [
                            Container(
                              height: 1,
                              width: 100,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: 1.9,
                                width: 80,
                                color: x == index
                                    ? Colors.blue
                                    : Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        actions: [
          Icon(Icons.notifications, color: Colors.grey),
          SizedBox(width: 10),
          Container(
            height: 35,
            width: 35,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              'assets/Screenshot 2024-06-03 223750.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(
                                height: 120,
                                width: 120,
                                child: Image.asset(
                                  img[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Text(rate[index],
                                        style: TextStyle(color: Colors.white)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.white,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: img.length,
              )),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Sponsored  .",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Suggested for you",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: img.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 250,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 0),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              img[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text[index],
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              desc[index],
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Text(rate[index],
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    );
                  }))
          // Your main content here
        ],
      ),
    );
  }
}
