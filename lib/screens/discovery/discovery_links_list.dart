import 'package:flutter/material.dart';
import 'package:petcode_app/screens/discovery/discovery_link.dart';
import 'package:petcode_app/utils/style_constants.dart';

class DiscoveryLinksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          DiscoveryLink(
            name: 'Pet Parks',
            description: 'Get out and about by exploring nearby pet parks',
            imageLink: 'assets/images/pet_parks_img.png',
          ),
          SizedBox(
            height: height * 0.03,
          ),
          DiscoveryLink(
            name: 'Pet Perks',
            description:
                'Exclusive discounts at your favorite pet boutiques - coming soon...',
            imageLink: 'assets/images/pet_perks_img.png',
          ),
        ],
      ),
    );
  }
}
