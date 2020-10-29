import 'package:flutter/material.dart';
import 'package:latihan_http_request_koneksi_ke_api/post_result_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: avoid_init_to_null
  PostResult postResult = null;

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
              Text((postResult != null)
                  ? postResult.id +
                      "|" +
                      postResult.name +
                      "|" +
                      postResult.job +
                      "|" +
                      postResult.createdAt
                  : "tidak ada data"),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI("Badu", "dokter").then((velue) {
                    postResult = velue;
                    setState(() {});
                  });
                },
                child: Text("POST"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
