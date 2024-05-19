import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/features/authentication/screens/home/widgets/home_searchbar.dart';
import 'package:t_store/features/authentication/screens/store/widgets/grid_view_element.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TappBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            Stack(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.shopping_bag,
                      color: TColors.black,
                    )),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: TColors.black),
                    child: Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.white, fontSizeFactor: 0.8),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, inneBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: TColors.white,
                  expandedHeight: 448,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(TSizes.sm),
                    child: ListView(
                      children: [
                        HomeSearch(),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: TSizes.sm),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Featured Brands",
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
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  // mainAxisSpacing: TSizes.gridViewSpacing,
                                  // crossAxisSpacing: TSizes.gridViewSpacing,
                                  mainAxisExtent: 90),
                          itemBuilder: (_, index) => IconGrid(),
                        )
                      ],
                    ),
                  ),
                  bottom: TabBar(
                    isScrollable: true,
                    indicatorColor: TColors.primary,
                    unselectedLabelColor: TColors.darkGrey,
                    labelColor: TColors.primary,
                    tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Cloths"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      ),
                    ],
                  ),
                )
              ];
            },
            body: Container()),
      ),
    );
  }
}
