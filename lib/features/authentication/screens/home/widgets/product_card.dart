import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/store/widgets/product_details.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetails()),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: TColors.light,
          ),
          padding: EdgeInsets.all(TSizes.sm),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(
                    Iconsax.heart5,
                    color: Colors.red,
                  )),
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
              Container(
                  width: 150,
                  height: 150,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Image(
                    image: AssetImage(TImages.productImage1),
                  )),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.only(left: TSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Green Nike Air Shoe",
                        style: Theme.of(context).textTheme.labelLarge,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: TSizes.xs,
                      ),
                      Row(
                        children: [
                          Text(
                            "Nike",
                            style: Theme.of(context).textTheme.labelMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: TSizes.xs,
                          ),
                          Icon(
                            Iconsax.verify5,
                            color: TColors.primary,
                            size: TSizes.iconXs,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$35.5',
                            style: Theme.of(context).textTheme.headlineMedium,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: TColors.dark,
                                borderRadius: BorderRadius.only(
                                    topLeft:
                                        Radius.circular(TSizes.cardRadiusMd),
                                    bottomRight: Radius.circular(
                                        TSizes.productImageRadius))),
                            child: SizedBox(
                              width: TSizes.iconLg,
                              height: TSizes.iconLg,
                              child: Icon(
                                Iconsax.add,
                                color: TColors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
