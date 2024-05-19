import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class TlistTile extends StatelessWidget {
  const TlistTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.subTitle,
      this.trailing,
      required this.onTap});
  final String title, subTitle;
  final IconData icon;
  final Widget? trailing;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      leading: Icon(
        icon,
        size: 28,
        color: TColors.primary,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
