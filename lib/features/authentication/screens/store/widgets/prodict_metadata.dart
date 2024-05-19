import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.sm),
              decoration: BoxDecoration(
                  color: TColors.secondary.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(TSizes.sm)),
              child: Text(
                textAlign: TextAlign.center,
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              '\$175',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ],
    );
  }
}
