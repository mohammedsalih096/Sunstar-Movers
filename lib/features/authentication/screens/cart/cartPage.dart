import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/features/authentication/screens/cart/widgets/list_view_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(shape: LinearBorder()),
          onPressed: () {},
          child: Text("CheckOut \$ 170"),
        ),
      ),
      appBar: TappBar(
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) => SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
              itemCount: 10,
              itemBuilder: (_, __) => Column(
                    children: [
                      TcardImge(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 70,
                              ),
                              Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: TColors.grey,
                                    borderRadius: BorderRadius.circular(180)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Iconsax.minus,
                                    size: TSizes.md,
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
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: TColors.primary,
                                    borderRadius: BorderRadius.circular(180)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Iconsax.add,
                                    size: TSizes.md,
                                    color: TColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "\$ 170",
                            style: Theme.of(context).textTheme.headlineSmall,
                          )
                        ],
                      )
                    ],
                  ))),
    );
  }
}
