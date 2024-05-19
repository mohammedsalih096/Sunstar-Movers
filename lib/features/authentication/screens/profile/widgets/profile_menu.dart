import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu(
      {super.key,
      required this.title,
      required this.value,
      this.icon = Iconsax.arrow_right_34,
      required this.onPressed});
  final String title;
  final String value;
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          flex: 5,
          child: Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: 18,
              )),
        )
      ],
    );
  }
}
