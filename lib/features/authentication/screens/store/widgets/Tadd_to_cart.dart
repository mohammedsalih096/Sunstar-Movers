import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: TColors.light,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(TSizes.md),
              topLeft: Radius.circular(TSizes.md))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: TColors.darkGrey.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(180)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.minus,
                    size: TSizes.lg,
                    color: TColors.white,
                  ),
                ),
              ),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: TColors.black.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(180)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.add,
                    size: TSizes.lg,
                    color: TColors.white,
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: TColors.black.withOpacity(0.9),
              ),
              onPressed: () {},
              child: Text(
                "Add To Cart",
              ))
        ],
      ),
    );
  }
}
