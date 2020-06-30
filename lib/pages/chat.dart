import 'package:falteknesi/models/chat_page.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> text = [
    "Captain Marvel",
    "Iron Man",
    "Wonder Woman",
    "Black Panther",
    "Aquaman",
    "DC vs Marvel",
    "Black Widow",
  ];
  List<String> secondaryText = [
    "Hazırlanıyor... ",
    "Hazırlanıyor... ",
    "I will fight for those w",
    "Wakanda forever!",
    "Dressed like a bat.I dig it",
    "You:Do you think Hawkeye",
    "I'm finally getting my ",
  ];

  List<String> images = [
    "images/captain_marvel.jpeg",
    "images/ironman.jpeg",
    "images/wonder_woman.jpeg",
    "images/black_panther.jpeg",
    "images/aquaman.jpeg",
    "images/marvel.jpeg",
    "images/black_widow.jpeg",
  ];
  List<String> time = [
    "5:32 PM",
    "6:14 PM",
    "6:00 PM",
    "5:11 PM",
    "4:55 PM",
    "4:11 PM",
    "Yesterday"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Mesajlar",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  filled: true,
                  contentPadding: EdgeInsets.all(8),
                  fillColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.green.shade600,
              height: 1,
            ),
            SizedBox(
              height: 12,
            ),
            ListView.builder(
              itemCount: text.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 16, right: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatPage(
                  text: text[index],
                  secondaryText: secondaryText[index],
                  image: images[index],
                  time: time[index],
                  isMessageSent: (index == 2 || index == 5) ? true : false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
