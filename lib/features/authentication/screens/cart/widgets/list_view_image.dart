import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/Trounded_image.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TcardImge extends StatelessWidget {
  const TcardImge({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImageContainer(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: TColors.light,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Nike",
                    style: Theme.of(context).textTheme.bodySmall,
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
              Flexible(
                child: Text(
                  "Green Nike Shoe",
                  style: Theme.of(context).textTheme.labelLarge,
                  maxLines: 1,
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "Color:",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "Green",
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: " Size:",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: "EU 34",
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
