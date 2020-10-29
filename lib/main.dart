import 'package:flutter/material.dart';
import 'package:latihan_http_request_koneksi_ke_api/post_result_model.dart';
import 'package:latihan_http_request_koneksi_ke_api/user_model.dart' show User;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // PostResult postResult = null;
  User user = null;
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Text((user != null)
              //     ? user.id + "|" + user.name
              //     : "tidak ada data"),
              // +
              // "|" +
              // postResult.job +
              // "|" +
              // postResult.createdAt
              Text(output),
              RaisedButton(
                onPressed: () {
                  User.getUsers("2").then((users) {
                    output = "";
                    for (int i = 0; i < users.length; i++)
                      output = output + "[" + users[i].name + " ]";
                    setState(() {});
                  });
                  // User.connectToAPI("2").then((value) {
                  // User.getUsers("2").then((user) {
                  //   output = "";
                  //   for (int i = 0; i < user.length; i++)
                  //     output = output + "[" + user[i].name + " ]";
                  //   setState(() {});
                  // });
                  // user = value;
                  // setState(() {

                  // }
                  // );
                  // );
                  // PostResult.connectToAPI("Badu", "dokter").then((velue) {
                  //   postResult = velue;
                  //   setState(() {});
                  // });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
