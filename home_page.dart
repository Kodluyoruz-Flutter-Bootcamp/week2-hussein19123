import 'dart:html';

import 'package:flutter/material.dart';

import '../app_bar.dart';
import '../models/insertion.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Insertion> insertions = [
    Insertion(
      date: '11-11-2022',
      value: 113,
      insulin: 1,
    ),
    Insertion(
      date: '11-11-2022',
      value: 113,
      insulin: 1,
    ),
    Insertion(
      date: '11-11-2022',
      value: 113,
      insulin: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: getAppBar('Home'),
        body: Column(
          children: [
            Container(
              height: 200,
              color: Colors.grey,
              child: ElevatedButton(
                child: Text('click here'),
                onPressed: () {
                  setState(() {
                    insertions.add(Insertion(
                      date: '11-11-2022',
                      value: 113,
                      insulin: 1,
                    ));
                  });
                  print(insertions.length);
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: insertions.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Row(
                        // mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(insertions[index].value.toString()),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            // color: Colors.blue,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.black87,
                            ),
                            child: Text(
                              insertions[index].insulin.toString(),
                              style: TextStyle(color: Colors.cyan[700]),
                            ),
                          ),
                        ]),
                    subtitle: Row(
                      children: [
                        Icon(Icons.watch_later_outlined),
                        Text(insertions[index].date)
                      ],
                    ),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Details()),
                      );
                      // navigate to new page
                      /*ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("You clicked on #${index}"),
                    ),
                  );*/
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
            )
          ],
        ));
  }
}
