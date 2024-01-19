import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  static Future<void> whatsapp(
      {required String phone, required String message}) async {
    var whatsappUrl =
        "whatsapp://send?phone=+91$phone&text=${Uri.encodeComponent(message)}";
    try {
      await launchUrl(Uri.parse(whatsappUrl));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
