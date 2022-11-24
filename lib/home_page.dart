import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //

  String? stringResponse;
  Map? mapResponse;
  Map? dataResponse;

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(
        'https://api.github.com/users/JakeWharton/repos?page=1&per_page=15'));

    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body);
        dataResponse = mapResponse['owner'];
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jake's Git"),
      ),
      body: ListView.separated(
        itemCount: 25,
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 1),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.bookmark_add),
            title: Text('item $index'),
            subtitle: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(dataResponse['login'].toString()),
                  Row(
                    children: const [
                      Icon(Icons.person),
                      Text('check'),
                      SizedBox(width: 15),
                      Icon(Icons.person),
                      Text('check'),
                      SizedBox(width: 15),
                      Icon(Icons.person),
                      Text('check'),
                    ],
                  ),
                ],
              ),
            ),
            isThreeLine: true,
          );
        },
      ),
    );
  }
}
