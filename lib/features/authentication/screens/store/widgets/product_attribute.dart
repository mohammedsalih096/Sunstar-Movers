import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/store/widgets/Tchoicechip.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: TColors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text(
                  "Variation",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Price:",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.darkGrey),
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
                          width: TSizes.spaceBtwInputFields,
                        ),
                        Text(
                          '\$175',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "stock:",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.darkGrey),
                        ),
                        SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                        Text(
                          "In Stock",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(color: TColors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
              Text(
                "This is the description of the products and description",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: Colors.black),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Colors",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: TColors.black),
                ),
                Text(
                  "View All",
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: TColors.grey),
                ),
              ],
            ),
            Row(
              children: [
                TchoiceChip(
                  text: 'Green',
                  selected: true,
                ),
                TchoiceChip(
                  text: 'Blue',
                  selected: false,
                ),
                TchoiceChip(
                  text: 'Red',
                  selected: false,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Size",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.black),
            ),
            Text(
              "View All",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TchoiceChip(
              text: 'EU 31',
              selected: false,
            ),
            TchoiceChip(
              text: 'EU 34',
              selected: true,
            ),
            TchoiceChip(
              text: 'EU 36',
              selected: false,
            ),
          ],
        )
      ],
    );
  }
}
