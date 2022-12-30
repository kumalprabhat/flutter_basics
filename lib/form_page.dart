import 'package:flutter/material.dart';

import 'main.dart';
class FormActivity extends StatelessWidget {
  const FormActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FormPage(),
    );
  }
}
class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Activity"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("johndoe@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("J",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile",
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings",
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us",
                style: TextStyle(color: Colors.black45, fontSize: 16),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Name",
                hintText: "Enter your name",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                labelText: "Phone No:",
                hintText: "Enter Phone number",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.calendar_today),
                labelText: "DOB",
                hintText: "Enter DOB",
              ),
            ),
            SizedBox(height: 16,),
            new Container(
              //padding: EdgeInsets.only(left: 150, top: 50),
              child: new RaisedButton(
                color: Colors.blue,
                child: Text("Go Back",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: (){
                  showAlertDialog(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = FlatButton(
    child: const Text("Yes"),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Logout?"),
    content: Text("You Want to logout?"),
    actions: [
      okButton,

    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context){
        return alert;
      },
  );
}