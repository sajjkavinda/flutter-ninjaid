import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalvl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalvl += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn3.iconfinder.com/data/icons/avatars-15/64/_Ninja-2-512.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[600],
            ),
            Text("Name",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                )),
            SizedBox(
              height: 10,
            ),
            Text("Sajana",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            Text("Current Level",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                )),
            SizedBox(
              height: 10,
            ),
            Text('$ninjalvl',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "myemail.my.lk",
                  style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 18,
                      letterSpacing: 1.5),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
