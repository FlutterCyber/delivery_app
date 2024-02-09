import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 10, right: 20, left: 20),
          child: Column(
            children: [
              Container(
                width: _width,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: Center(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      prefixIcon: Icon(IconlyLight.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(IconlyLight.location),
                  SizedBox(
                    width: 5,
                  ),
                  Text("9 West 46th Street, New York City")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonsTabBar(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                radius: 15,
                height: 80,
                backgroundColor: Colors.orange,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                // Add your tabs here
                tabs: [
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          child: Center(
                              child: Icon(
                            Icons.fastfood,
                            size: 40,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          child: Center(
                              child: Icon(
                            Icons.local_drink,
                            size: 40,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          child: Center(
                              child: Icon(
                            Icons.no_food,
                            size: 40,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          child: Center(
                              child: Icon(
                            Icons.emoji_food_beverage_rounded,
                            size: 40,
                          )),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _foods(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _foods() {
    return ListView(
      children: [
        const Text(
          "Food Menu",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                // onTap: (){Navigator.pushReplacementNamed(context, routeName)},
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.only(left: 10, top: 5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade100,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/burger.png"),
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Burger",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/burger.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pizza",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/burger.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BBQ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/burger.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fruit",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/burger.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sushi",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(left: 10, top: 5),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber.shade100,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/burger.png"),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Noodle",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Text("Near Me"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
        _restaurants("assets/images/burger.png"),
      ],
    );
  }

  Widget _restaurants(String imageUrl) {
    return GestureDetector(
      onTap: () {


      },
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            Image(height: 60, width: 60, image: AssetImage(imageUrl)),
            Column(
              children: [
                Text("fgsdfgsdf"),
                SizedBox(
                  height: 5,
                ),
                Text("dfgsdhfsd"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
