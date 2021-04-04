//import 'dart:html';

import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter/foundation.dart';

class Utils {
  static Future openLink({String url3}) => _launchUrl2(url3);

  static Future _launchUrl2(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static Future openEmail({String toEmail, String subject, String body}) async {
    final url = 'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=$body';

    await _launchUrl2(url);
  }
}
