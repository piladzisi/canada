import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  LinkButton({this.url, this.text});

  final String url;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        _launchURL(url);
        print('pressed');
      },
      child: Text(
        text,
        style: TextStyle(
            color: Colors.redAccent, fontSize: 18.0, fontFamily: 'Futura'),
      ),
    );
  }
}

_launchURL(url) async {
  //String url;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
