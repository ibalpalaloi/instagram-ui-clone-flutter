import 'package:flutter/material.dart';
import '../widgets/profilePicture.dart';
import '../widgets/infoItem.dart';
import '../widgets/highlighItem.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Iqbal P",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.menu, color: Colors.black),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoItem('Post', '123'),
                      infoItem('Followers', '890'),
                      infoItem('Following', '300'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Text(
              "Iqbal P",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: RichText(
              text: TextSpan(
                  text:
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: " #hastag", style: TextStyle(color: Colors.blue)),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: Text(
              "https://www.instagram.com/ibal_p/",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      highlightItem("Highlight_1",
                          "https://picsum.photos/id/238/200/300"),
                      highlightItem("Highlight_1",
                          "https://picsum.photos/id/239/200/300"),
                      highlightItem("Highlight_1",
                          "https://picsum.photos/id/231/200/300"),
                      highlightItem("Highlight_1",
                          "https://picsum.photos/id/238/200/300"),
                      highlightItem("Highlight_1",
                          "https://picsum.photos/id/239/200/300"),
                      highlightItem("Highlight_1",
                          "https://picsum.photos/id/231/200/300"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.grid_on_outlined),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.black,
                  ))),
                ),
              ),
              Expanded(
                child: Container(
                  child: Icon(Icons.person_pin_outlined),
                ),
              )
            ],
          ),
          SizedBox(
            height: 2,
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 40,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => Image(
                    image: NetworkImage(
                        "https://picsum.photos/id/${index + 100}/200/300"),
                    fit: BoxFit.cover,
                  )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "home",
            ),
          ]),
    );
  }
}
