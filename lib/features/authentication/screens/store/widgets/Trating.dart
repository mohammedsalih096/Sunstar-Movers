import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TratingShare extends StatelessWidget {
  const TratingShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Iconsax.star5,
              size: 19,
              color: Colors.amber,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "0.5", style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(text: '(199)')
            ]))
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: TSizes.iconMd,
            ))
      ],
    );
  }
}
