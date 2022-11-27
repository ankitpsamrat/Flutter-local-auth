import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/method.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //

  List<Welcome> welcome = [];

  Future<List<Welcome>> getData() async {
    // http.Response response;
    final response = await http.get(Uri.parse(
        'https://api.github.com/users/JakeWharton/repos?page=1&per_page=15'));
    var data = jsonDecode(response.body.toString());

    // print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        welcome.add(Welcome.fromJson(index));
      }
      return welcome;
    } else {
      return welcome;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jake's Git"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemCount: welcome.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(
                      CupertinoIcons.bookmark,
                      size: 30,
                    ),
                    title: Text(welcome[index].name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(welcome[index].description),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('<>${welcome[index].language}'),
                            // const SizedBox(width: 15),

                            Text(welcome[index].openIssuesCount.toString()),
                            // const SizedBox(width: 15),

                            Text(welcome[index].watchersCount.toString()),
                          ],
                        ),
                      ],
                    ),
                    isThreeLine: true,
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
