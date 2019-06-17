import 'package:flutter/material.dart';
import 'linkButton.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          LinkButton(
            url:
                'https://www.canadavisa.com/quebec-regional-list-occupations-simplified-processing.html#gs.idyglq',
            text: 'Quebec',
          ),
          LinkButton(
            url:
                'https://www.canada.ca/en/employment-social-development/services/foreign-workers/global-talent/requirements.html',
            text: 'Global Talent Stream',
          ),
        ],
      ),
    );
  }
}
