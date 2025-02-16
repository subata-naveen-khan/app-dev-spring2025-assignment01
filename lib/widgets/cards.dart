import 'package:flutter/material.dart';

class Cards {
  static Widget postCard(String title, String date, String location) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4,
      shadowColor: Color(0xff000000),
      child: ListTile(
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/event.jpg",
            width: 90,
            height: 90,
            fit: BoxFit.cover,
          ),
        ),
        // leading: Image.asset(
        //   "assets/event.jpg",
        //   width: 90,
        //   height: 90,
        // ),
        title: Text(
          title, style: TextStyle(
            fontWeight: FontWeight.bold, 
            color: Color(0xff000000),
          ),
        ),
        subtitle: Text(
          "$date\n$location\nJohn Doe",
          style: TextStyle(
            height: 0.9,
            color: Color(0xff929292),
          ),
        ),
      ),
    );
  }

  static Widget commentCard(String title, String comment, String date) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
          tileColor: Colors.white,
          title: Text(title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
          subtitle: Row(
            children: [
              Column(
                children: [
                  Image(
                    image: Image.asset("assets/comments_arrow.png").image,
                    width: 20,
                    height: 20,
                    alignment: Alignment.topCenter,
                  ),
                  Container(height: 15,)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text('"$comment"\n$date'),
                  Text(
                    '"$comment"',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(date,),
                ],
              ),
            ],
          )),
    );
  }

  static Widget statsCard() {
    return Center(
      child: Column(
        children: [
          Container(
            height: 41,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "19",
                    style: TextStyle(
                      fontSize: 27.5,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF77F00),
                      height: 0.9,
                    ),
                  ),
                  Text("Posts", style: TextStyle(fontSize: 17)),
                  // SizedBox(height: 20),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "32",
                    style: TextStyle(
                      fontSize: 27.5,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF77F00),
                      height: 0.9,
                    ),
                  ),
                  Text("Comments", style: TextStyle(fontSize: 17)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
