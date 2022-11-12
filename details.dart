import 'package:flutter/material.dart';

import '../app_bar.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Details'),
      body: Center(child: Text('Details Page')),
    );
  }
}
