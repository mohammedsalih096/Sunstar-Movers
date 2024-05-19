import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/common/widgets/Trounded_image.dart';
import 'package:t_store/common/widgets/curved_edges/Tcurved_edges.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class PruductImageSlider extends StatelessWidget {
  const PruductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidgets(
        child: Container(
      color: TColors.light,
      child: Stack(
        children: [
          SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Image(image: AssetImage(TImages.productImage1)),
              )),
          Positioned(
            right: 0,
            bottom: 30,
            left: TSizes.sm,
            child: SizedBox(
              height: 60,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (_, index) => TRoundedImageContainer(
                      width: 60,
                      fit: BoxFit.contain,
                      backgroundColor: TColors.white,
                      border: Border.all(color: TColors.primary),
                      padding: EdgeInsets.all(TSizes.sm),
                      imageUrl: TImages.productImage1),
                  separatorBuilder: (_, __) => SizedBox(
                        width: TSizes.spaceBtwInputFields,
                      ),
                  itemCount: 6),
            ),
          ),
          TappBar(
            showBackArrow: true,
            actions: [
              Icon(
                Iconsax.heart5,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    ));
  }
}
