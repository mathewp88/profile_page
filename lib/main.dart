import 'package:flutter/material.dart';
import 'messaging.dart';

void main() => runApp(MaterialApp(
  home: ProfilePage(),
));

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Profile Page"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/halo.jpg'),
                radius: 150.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/goldenterrier.jpg'),
                  radius: 100.0,
                ),
             ),
            ),
          SizedBox(height: 30.0),
          Text(
            'GOLDEN TERRIER',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'UNITED KINGDOM',
            style: TextStyle(
              color: Colors.white54,
              letterSpacing: 1.0,
              fontSize: 15.0,
            ),
          ),
          SizedBox(height: 80.0),
          Options(),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}

class Options extends StatefulWidget {
  const Options({Key? key}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  String followstatus = 'Follow';
  String addstatus = 'Add';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(width: 10.0),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        backgroundColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(20.0)), //this right here
                        child: Container(
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    'User Added Successfully',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      letterSpacing: 1.0,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                SizedBox(
                                  width: 320.0,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      "OK",
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
                setState(() => addstatus = 'Added');
              },
              child: Text(addstatus),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.purpleAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                setState(() => followstatus = 'Following');
              },
              child: Text(followstatus),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreenAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Messaging()),
                );
              },
              child: Text('Message'),
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
    );
  }
}