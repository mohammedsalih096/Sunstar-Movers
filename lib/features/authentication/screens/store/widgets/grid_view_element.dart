import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class IconGrid extends StatelessWidget {
  const IconGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.xs),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: TColors.grey)),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                padding: EdgeInsets.all(TSizes.sm),
                decoration: BoxDecoration(
                    color: TColors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.shoeIcon),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Nike",
                          style: Theme.of(context).textTheme.headlineSmall,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Icon(
                          Iconsax.verify5,
                          color: TColors.primary,
                          size: TSizes.iconXs,
                        )
                      ],
                    ),
                    Text(
                      "256 Product With different Categories",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .apply(color: TColors.darkGrey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
