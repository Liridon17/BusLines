import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:erato/screens/home/settings/utils.dart';
import 'package:erato/services/auth.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(children: [
          Center(
            child: Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.help,
                color: Colors.amber[800],
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "SUPPORT",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 10,
            thickness: 2,
          ),
          InkWell(
            onTap: () => Utils.openEmail(
              toEmail: 'example@gmail.com',
              subject: 'I Need Help',
              body: 'I Need Help',
            ),
            child: Text('I Need Help',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Utils.openEmail(
              toEmail: 'example@gmail.com',
              subject: 'I Have a Privacy Question',
              body: 'I Have a Privacy Question',
            ),
            child: Text('I Have a Privacy Question',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Utils.openEmail(
              toEmail: 'example@gmail.com',
              subject: 'I Have a Safety Concern',
              body: 'I Have a Safety Concern',
            ),
            child: Text('I Have a Safety Concern',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.feedback,
                color: Colors.amber[800],
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Feedback",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          InkWell(
            onTap: () => Utils.openEmail(
              toEmail: 'example@gmail.com',
              subject: 'I Spotted a Bug',
              body: 'I Spotted a Bug',
            ),
            child: Text('I Spotted a Bug',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Utils.openEmail(
              toEmail: 'example@gmail.com',
              subject: 'I Have a Suggestion',
              body: 'I Have a Suggestion',
            ),
            child: Text('I Have a Suggestion',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => Utils.openEmail(
              toEmail: 'example@gmail.com',
              subject: 'I Have a Suggestion',
              body: 'I Have a Suggestion',
            ),
            child: Text('I Have a Suggestion',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.more,
                color: Colors.amber[800],
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Others",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          Text('Version 1.0',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              )),
          SizedBox(
            height: 40,
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 60,
            color: Colors.amber[800],
            elevation: 0,
            onPressed: () async {
              await _auth.signOut();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
