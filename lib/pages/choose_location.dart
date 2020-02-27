import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    // simulate network request for a username from database
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });

    // simulate network request to get bio of username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'vega, musician...';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    print('initState fuction ran');
    getData();
    print('sup man!');
  }

  @override
  Widget build(BuildContext context) {
    print('build fuction ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          // setState causes build to rerun
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
