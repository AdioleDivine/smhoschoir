import 'package:flutter/material.dart';

class OtherMembers extends StatefulWidget {
  @override
  _OtherMembersState createState() => _OtherMembersState();
}

class _OtherMembersState extends State<OtherMembers> {
  List<String> numbers = [
    "123456789",
    "123456789",
    "456777885",
    "945205543",
    "095724023",
    "428492525",
    "523459257",
    "485785166",
    "529385762",
    "219484519",
    "014589155",
    "104195971",
    "515819051",
    "019415784"
  ];
  List<String> names = [
    "Divine Adiole",
    "Esther Okpuno",
    "Daniel Lebare",
    "Victoria Offong",
    "Blessing Esther",
    "Alero Uba",
    "Joshua Evbo",
    "Shin Takei",
    "Ogun Victor",
    "Blessing Esther",
    "Alero Uba",
    "Joshua Evbo",
    "Shin Takei",
    "Ogun Victor"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          title: Text(
            "Members",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text(
              "Dan Abia",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text('Choir master'),
            subtitle: Text("298056473"),
          ),
          ListTile(
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text(
              "Victor Ade",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text('Assistant Choir master'),
            subtitle: Text("2392643373"),
          ),
          ListTile(
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text(
              "Deborah Emami",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text('Choir mistress'),
            subtitle: Text("238950473"),
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      child: FlutterLogo(),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text('member'),
                    subtitle: Text(numbers[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
