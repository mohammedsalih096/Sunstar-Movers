import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/features/authentication/screens/home/widgets/product_card.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(
        title: Text(
          "WhishList",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.add,
                color: TColors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  mainAxisExtent: 220),
              itemBuilder: (_, index) => ProductCardVertical(),
            ),
          ],
        ),
      ),
    );
  }
}
