import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TchoiceChip extends StatelessWidget {
  const TchoiceChip(
      {super.key, required this.text, this.selected = true, this.onSelected});
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? Colors.white : null),
      avatar: isColor
          ? Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: THelperFunctions.getColor(text)!,
              ),
            )
          : null,
      shape: isColor ? CircleBorder() : null,
      labelPadding: isColor ? EdgeInsets.all(0) : null,
      backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
      padding: isColor ? EdgeInsets.all(0) : null,
      selectedColor: isColor ? THelperFunctions.getColor(text)! : null,
    );
  }
}
