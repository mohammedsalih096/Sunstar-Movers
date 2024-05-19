import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:t_store/features/authentication/screens/home/widgets/carousel_slider.dart';
import 'package:t_store/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/authentication/screens/home/widgets/home_searchbar.dart';
import 'package:t_store/features/authentication/screens/home/widgets/listview_items.dart';
import 'package:t_store/features/authentication/screens/home/widgets/product_card.dart';
import 'package:t_store/features/shop/controllers/home_controllers.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeControllers());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 434,
              height: 320,
              color: TColors.primary,
              padding: EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  HomeSearch(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Text(
                      "Popular Categories",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: TColors.white),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                      child: Column(
                        children: [
                          SizedBox(
                            height: TSizes.spaceBtwInputFields,
                          ),
                          SizedBox(
                            height: 80,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 19,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) {
                                  return ListviewItems();
                                }),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 1,
                      onPageChanged: (index, _) =>
                          controller.updatePageIndicator(index)),
                  items: [
                    BannerImageContainer(bannerImage: TImages.promoBanner1),
                    BannerImageContainer(bannerImage: TImages.promoBanner2),
                    BannerImageContainer(bannerImage: TImages.promoBanner3),
                  ],
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Container(
                            width: 18,
                            height: 4,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color:
                                    controller.carouselPageIndicator.value == i
                                        ? TColors.primary
                                        : TColors.grey)),
                    ],
                  ),
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Products",
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
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      mainAxisExtent: 220),
                  itemBuilder: (_, index) => ProductCardVertical(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
