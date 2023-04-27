import 'package:cubittask/180task/task_daraga.dart';
import 'package:cubittask/colleage/collage_task.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("MY TASKS"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.light_mode,
              size: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: UserAccountsDrawerHeader(
          accountEmail: Text("eisajosef12@gmail.com"),
          accountName: Text("Youssef Eissa"),
          currentAccountPicture: CircleAvatar(
            child: Text("Yo"),
          ),
        ),
      ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 100,
            width: 350,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TaskDaraga()));
            },
                child: Text(
                    "Task For 180",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
          ),
          ),

          Container(
            margin: EdgeInsets.all(20),
            height: 100,
            width: 350,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CollageTask()));
              },
              child: Text(
                "Task For Collage",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
