import 'package:assignment01/widgets/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:assignment01/widgets/pagetabs.dart';
import 'package:assignment01/widgets/cards.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          // child: Text('Hello World!'),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                title: Text('Custom AppBar Shape'),
                shape: CustomAppBarShape(),
                backgroundColor: Colors.orange,
              ),
              Container(
                height: 95,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xff000000),
                    width: 2,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/pfp.png',
                    width: 105,
                    height: 105,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "John Doe",
                style: TextStyle(
                  fontSize: 23,
                  color: Color(0xffD62828),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  "John Doe exists. John Doe builds. John Doe innovates. What's next? Only time will tell...",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff929292),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 50,
              ),
              Expanded(
                child: ProfileTabs(
                  tabTitles: ["Posts", "Comments", "Stats"],
                  tabContents: [
                    ListView(
                      children: [
                        Cards.postCard(
                          "Tech Conference",
                          "30 November 2024, 9:00 AM",
                          "13th Street, Park Avenue"),
                        Cards.postCard(
                          "Leadership Seminar", 
                          "28 Jan 2025, 2:00 PM",
                          "13th Street, Park Avenue"),
                        Cards.postCard(
                          "Entrepreneurship Summit",
                          "15 March 2025, 10:00 AM",
                          "13th Street, Park Avenue"),
                        Cards.postCard(
                          "Tech Conference",
                          "30 November 2024, 9:00 AM",
                          "13th Street, Park Avenue"),
                        Cards.postCard(
                          "Leadership Seminar", 
                          "28 Jan 2025, 2:00 PM",
                          "13th Street, Park Avenue"),
                        Cards.postCard(
                          "Entrepreneurship Summit",
                          "15 March 2025, 10:00 AM",
                          "13th Street, Park Avenue"),
                        
                      ],
                    ),
                    ListView(
                      children: [
                        Cards.commentCard(
                            "Flutter Flash",
                            "Looks like an amazing event!",
                            "30 November 2024, 11:00 PM"),
                        Cards.commentCard(
                            "Bob's Annual BBQ",
                            "Wish I could've been there :(",
                            "2 August 2024, 10:31 PM"),
                        Cards.commentCard(
                            "Networking Lounge",
                            "Will the event be starting on time?",
                            "25 June 2023, 12:00 AM"),
                        Cards.commentCard(
                            "Flutter Flash",
                            "Looks like an amazing event!",
                            "30 November 2024, 11:00 PM"),
                        Cards.commentCard(
                            "Bob's Annual BBQ",
                            "Wish I could've been there :(",
                            "2 August 2024, 10:31 PM"),
                        Cards.commentCard(
                            "Networking Lounge",
                            "Will the event be starting on time?",
                            "25 June 2023, 12:00 AM"),
                      ],
                    ),
                    Cards.statsCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
