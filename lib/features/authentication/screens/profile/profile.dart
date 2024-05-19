import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/features/authentication/screens/address/address.dart';
import 'package:t_store/features/authentication/screens/profile/widgets/header.dart';
import 'package:t_store/features/authentication/screens/profile/widgets/list_tile.dart';
import 'package:t_store/features/authentication/screens/profile/widgets/user_profile.dart';
import 'package:t_store/features/authentication/screens/signUp/signUp.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../../utils/constants/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          width: 434,
          color: TColors.primary,
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              TappBar(
                title: Text("Account",
                    style: Theme.of(context).textTheme.headlineMedium!.apply(
                          color: TColors.white,
                        )),
              ),
              ProfileHeader(
                onPressed: () => Get.to(() => ProfileScreen()),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Account Settings",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextButton(onPressed: () {}, child: SizedBox())
                ],
              ),
              TlistTile(
                  title: "My address",
                  icon: Iconsax.safe_home,
                  subTitle: "Set shop delivery address",
                  onTap: () => Get.to(() => AddressPage())),
              TlistTile(
                  title: "My Cart",
                  icon: Iconsax.shopping_cart,
                  subTitle: "Add, remove poducts and move to checkeout",
                  onTap: () {}),
              TlistTile(
                  title: "Bank Account",
                  icon: Iconsax.discount_shape,
                  subTitle: " List of all the discounted coupens",
                  onTap: () {}),
              TlistTile(
                  title: "Notification",
                  icon: Iconsax.notification,
                  subTitle: "Set any kind of notification message",
                  onTap: () {}),
              TlistTile(
                  title: "Account privacy",
                  icon: Iconsax.security_card,
                  subTitle: "Manage data usage and connected accounts",
                  onTap: () {}),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "App Settings",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextButton(onPressed: () {}, child: SizedBox()),
                ],
              ),
              TlistTile(
                  title: "Load Data",
                  icon: Iconsax.document_upload,
                  subTitle: "Upload data to your cloud firebase",
                  onTap: () {}),
              TlistTile(
                title: "GeoLocation",
                icon: Iconsax.location,
                subTitle: "set recommendation based on settings ",
                onTap: () {},
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              TlistTile(
                title: "Safe Mode ",
                icon: Iconsax.security_user,
                subTitle: "set result is safe for all ages",
                onTap: () {},
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              TlistTile(
                title: "Hd image Quality",
                icon: Iconsax.image,
                subTitle: "set image quality is to be seen",
                onTap: () {},
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text('logOut')))
            ],
          ),
        )
      ],
    ));
  }
}
