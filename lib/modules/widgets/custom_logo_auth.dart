import 'package:flutter/material.dart';

import '../../core/constant/assets_image/image_assets.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 80,
        height: 80,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(
                  AppImageAsset.logo,
                ),
                fit: BoxFit.fill),
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(70)),

        // child: Image.asset(
        //   fit: BoxFit.fill,
        //   AppImageAsset.logo,
        //   height: 40,
        // )
      ),
    );
  }
}
