import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/features/authentication/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TappBar(
        showBackArrow: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                        width: 88,
                        height: 88,
                        child: Image(image: AssetImage(TImages.user))),
                    TextButton(
                        onPressed: () {}, child: Text("Change Profile Image"))
                  ],
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile Information",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(onPressed: () {}, child: SizedBox())
                ],
              ),
              ProfileMenu(
                title: "Name",
                value: "Mohammed Salih",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "UserName",
                value: "Mohammed Salih",
                onPressed: () {},
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Personal Information",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(onPressed: () {}, child: SizedBox())
                ],
              ),
              ProfileMenu(
                title: "UserId",
                value: "45680",
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Email",
                value: "mohammadsalih096@gmail.com",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Phone N0",
                value: "7736259100",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Gender",
                value: "Male",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Date of Birth",
                value: "09/08/2001",
                onPressed: () {},
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text("Close Account",
                      style: TextStyle(color: Colors.red)))
            ],
          ),
        ),
      ),
    );
  }
}
