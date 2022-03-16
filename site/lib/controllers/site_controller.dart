import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SiteController {
  Future<void> launchLinkedin() async {
    if (!await launch('https://www.linkedin.com/in/murilobohlke/')) {
      debugPrint('Could not launch Linkedin');
    }
  }

  Future<void> launchFigma() async {
    if (!await launch('https://www.figma.com/@murilobohlke')) {
      debugPrint('Could not launch Figma');
    }
  }

  Future<void> launchGithub() async {
    if (!await launch('https://github.com/murilobohlke')) {
      debugPrint('Could not launch Github');
    }
  }

  Future<void> launchGooglePlay() async {
    if (!await launch(
        'https://play.google.com/store/apps/dev?id=6000491017325968352')) {
      debugPrint('Could not launch Google Play');
    }
  }

  Future<void> openWhatsapp() async {
    String phone = '+5553984288037';
    String message =
        'Olá Murilo, vi o seu site e gostaria de trocar uma ideia contigo, podemos conversar?';

    String url = "whatsapp://send?phone=$phone&text=$message";

    if (!await launch(url)) {
      debugPrint('Could not launch Whatsapp');
    }
  }
}
