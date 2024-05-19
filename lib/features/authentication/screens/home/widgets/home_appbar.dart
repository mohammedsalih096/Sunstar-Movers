import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/features/authentication/screens/cart/cartPage.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TappBar(
      title: Column(
        children: [
          Text(TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey)),
          Text(TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white)),
        ],
      ),
      actions: [
        Stack(
          children: [
            IconButton(
                onPressed: () => Get.to(() => CartPage()),
                icon: Icon(
                  Iconsax.shopping_bag,
                  color: TColors.white,
                )),
            Positioned(
              right: 0,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: TColors.black),
                child: Text(
                  "2",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.white, fontSizeFactor: 0.8),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
