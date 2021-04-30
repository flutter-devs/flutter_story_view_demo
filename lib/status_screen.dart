import 'package:flutter/material.dart';
import 'package:flutter_story_view_demo/store_page_view.dart';
import 'package:flutter_story_view_demo/theme/colors.dart';



class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green[200],
        title: Text(
          "Flutter Story View Demo",
          ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Status",
                  style: TextStyle(
                      fontSize: 23, color: bgColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 38,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    style: TextStyle(color: white),
                    cursorColor: primary,
                    decoration: InputDecoration(
                        prefixIcon:
                        Icon(Icons.search, color: white.withOpacity(0.3)),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: white.withOpacity(0.3), fontSize: 17)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(color: textfieldColor),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                      fit: BoxFit.cover)
                              ),
                            ),
                            Positioned(
                              right: 5,
                              bottom: 0,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: primary),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "My Status",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: white),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Add to my status",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: white.withOpacity(0.5)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            color: white.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.camera_alt,
                            color: primary,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            color: white.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.edit,
                            color: primary,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(8.0),
            color: textfieldColor,
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                  ),
                  title: Text(
                    "Logan Veawer",
                    style: TextStyle(fontWeight: FontWeight.bold,color: white ),
                  ),
                  subtitle: Text("Today, 20:16 PM",style: TextStyle(color:white.withOpacity(0.5)),),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StoryPageView())),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
