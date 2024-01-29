import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/strings.dart';

class GeneralProfileList extends StatelessWidget {
  const GeneralProfileList({
    Key? key, this.data,
  }) : super(key: key);
  final dynamic data;

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        ListTile(
          title: const Text(Strings.about),
          subtitle: Text(data.description??'No description'),
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text(Strings.contactInfo??'Contact Info'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Row(
                  children:  [
                    IconButton(icon: const Icon(Icons.email),onPressed: () {
                      Uri url = Uri.parse('mailto:${data.email??'No email'}');
                      _launchUrl(url);
                    },),
                    const SizedBox(width: 10),
                    const Text(Strings.email),
                  ],
                ),
                subtitle: Text(data.email??'No email'),
              ),
              ListTile(
                title: Row(
                  children:  [
                    IconButton(icon:  const Icon(Icons.phone),
                    onPressed: () {
                       Uri url = Uri.parse('tel:${data.contactPhone??'No phone'}');
                       _launchUrl(url);
                    },),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(Strings.phone??'Phone'),
                  ],
                ),
                subtitle: Text(data.contactPhone??'No phone'),
              ),
              ListTile(
                title: Row(
                  children: const [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Address'),
                  ],
                ),
                subtitle: Text(data.contactAdress??'No address'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
