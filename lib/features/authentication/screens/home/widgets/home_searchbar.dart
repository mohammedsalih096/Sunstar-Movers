import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(TSizes.xs),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: Border.all(color: TColors.grey)),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Iconsax.search_normal)),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text("Search For Items",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: TColors.darkGrey,
                    ))
          ],
        ),
      ),
    );
  }
}
