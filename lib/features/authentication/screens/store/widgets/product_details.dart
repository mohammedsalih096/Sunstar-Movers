import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/common/widgets/Trounded_image.dart';
import 'package:t_store/common/widgets/curved_edges/Tcurved_edges.dart';
import 'package:t_store/features/authentication/screens/store/widgets/Tadd_to_cart.dart';
import 'package:t_store/features/authentication/screens/store/widgets/Trating.dart';
import 'package:t_store/features/authentication/screens/store/widgets/prodict_metadata.dart';
import 'package:t_store/features/authentication/screens/store/widgets/product_attribute.dart';
import 'package:t_store/features/authentication/screens/store/widgets/product_detail_imageslider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PruductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TratingShare(),
                  ProductMetaData(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Text(
                    "Green Nike Sports Shoe",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Row(
                    children: [
                      Text(
                        "Status",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      Text(
                        "In Stock",
                        style: Theme.of(context).textTheme.labelLarge,
                      )
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    children: [
                      TRoundedImageContainer(
                        width: 32,
                        height: 32,
                        imageUrl: TImages.nikeLogo,
                      ),
                      SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
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
                  ProductAttributes(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Check Out"))),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Description",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .apply(color: TColors.black),
                      ),
                      SizedBox()
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    "This is the product description for the green nike shoe. the product is so much popular around the teenagers as well as the middle aged people, if you like to buy this click on the checkout button ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "show more",
                    trimExpandedText: "show less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Divider(),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reviews(199)",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .apply(color: TColors.black),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
