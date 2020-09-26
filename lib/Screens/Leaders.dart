import 'package:flutter/material.dart';

class Leaders extends StatefulWidget {
  @override
  _LeadersState createState() => _LeadersState();
}

class _LeadersState extends State<Leaders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0), // here the desired height
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            _simplePopup(),
          ],
          // title: Text(
          //   'Profile',
          // ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, '/profilePicUpload');
              print("hello");
            },
            child: Container(
              // height: 120,
              // width: 120,
              child: FlutterLogo(
                size: 100,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              // child: Padding(
              //   padding: const EdgeInsets.only(top: 80.0, bottom: 20),
              // child: Container(
              // color: Colors.black.withOpacity(0.6),
              // child: Icon(Icons.camera, color: Colors.white),
              // ),
              // ),
            ),
          ),
          // : GestureDetector(
          //     onTap: () {
          //       Navigator.pushNamed(context, '/profilePicUpload');
          //       print("hello");
          //     },
          // child: Container(
          //   height: 130,
          //   width: 130,
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       shape: BoxShape.circle,
          //       image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: NetworkImage(snapshot.data.imageUrl),
          //         // image: ExactAssetImage('assets/person.png'),
          //       )),
          // child: Padding(
          //   padding: const EdgeInsets.only(
          //       top: 80.0, bottom: 20),
          //   child: Container(
          //     color: Colors.black.withOpacity(0.6),
          //     child:
          //         Icon(Icons.camera, color: Colors.white),
          //   ),
          // ),
          // ),
          // ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 20,
                color: Colors.blue,
              ),
              title: Text(
                "Name",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(
                "Adiole Divine",
                // snapshot.data.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: ListTile(
              leading: Icon(
                Icons.mail,
                size: 20,
                color: Colors.blue,
              ),
              title: Text(
                "Position",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(
                "Member",
                // snapshot.data.email,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 20,
                color: Colors.blue,
              ),
              title: Text(
                "Phone Number",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(
                "08123456789",
                // snapshot.data.phonenumber,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: ListTile(
              leading: Icon(
                Icons.place,
                size: 20,
                color: Colors.blue,
              ),
              title: Text(
                "Address",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(
                "Somewhere up North",
                // snapshot.data.phonenumber,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: ListTile(
              leading: Icon(
                Icons.location_city,
                size: 20,
                color: Colors.blue,
              ),
              title: Text(
                "LGA",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(
                "Obio-Akpor",
                // snapshot.data.phonenumber,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget _simplePopup() => PopupMenuButton<int>(
        offset: Offset(70, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.blueAccent,
        icon: Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
        onSelected: (value) {
          if (value == 1) {
            print('hey');
          } else {
            print('hi jay');
          }
        },
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Edit Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.person),
              ],
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 2.0, top: 3.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.remove),
              ],
            ),
          ),
        ],
      );
}
