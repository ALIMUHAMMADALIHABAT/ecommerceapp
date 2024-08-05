import 'package:ecommerceapp/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../controller/SplashAnimationController.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashAnimationController controller =
        Get.put(SplashAnimationController());

    return Scaffold(
      body: Center(
        child: GetBuilder<SplashAnimationController>(
          builder: (_) {
            return FadeTransition(
              opacity: controller.fadeAnimation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.assetsImgLogoipsum2551),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
