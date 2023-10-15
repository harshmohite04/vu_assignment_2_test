import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccessPage extends StatefulWidget {
  const AccessPage({Key? key}) : super(key: key);

  @override
  State<AccessPage> createState() => _AccessPageState();
}

class _AccessPageState extends State<AccessPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Center(
                  child: Text(
                    'VU Assignment',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
               MaterialButton(
                  padding: EdgeInsets.only(left: 50.0),
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Icon(Icons.exit_to_app),
                ),
            ],
          ),
        ),
        body: Column(
          children: [titleContainer(), deadlineContainer()],
        ),
      ),
    );
    ;
  }
}

class deadlineContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        child: Text(
          'This is a Container',
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFE4D5EB),
          border: Border.all(
            color: Colors.green, // Set the color for all sides
            width: 3,
          ),
        ),
        height: 150,
        width: double.infinity,
      ),
    );
  }
}

class titleContainer extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Center(
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 30,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the start (left)
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      user.email!,
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Year : 2nd',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Div : F3',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFE4D5EB),
            border: Border.all(
              color: Colors.green,
              width: 3,
            ),
          ),
          height: 100,
          width: double.infinity,
        ),
      ),
    );
  }
}
