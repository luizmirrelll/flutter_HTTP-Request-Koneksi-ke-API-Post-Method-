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
  PostResult postResult = null;
  User user = null;

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
              Text((user != null)
                  ? user.id + "|" + user.name
                  : "tidak ada data"),
              // +
              // "|" +
              // postResult.job +
              // "|" +
              // postResult.createdAt

              RaisedButton(
                onPressed: () {
                  User.connectToAPI("2").then((value) {
                    user = value;
                    setState(() {});
                  });
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
