import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/image_strings.dart';

import '../../../../../utils/constants/colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            width: 50,
            height: 50,
            child: Image(image: AssetImage(TImages.user))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mohammed Salih",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white),
            ),
            Text("mohammadsalih096@gmail.com",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white)),
          ],
        ),
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.edit,
              color: TColors.white,
            ))
      ],
    );
  }
}
