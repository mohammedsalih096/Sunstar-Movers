import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TRoundedImageContainer extends StatelessWidget {
  const TRoundedImageContainer(
      {super.key,
      this.width,
      this.height,
      this.padding,
      this.border,
      this.backgroundColor,
      this.borderRadius = TSizes.md,
      this.fit = BoxFit.contain,
      this.isNetworkImage = false,
      this.applyImageRadius = true,
      required this.imageUrl,
      this.onTap});
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final Color? backgroundColor;
  final double borderRadius;
  final BoxFit? fit;
  final bool isNetworkImage;
  final bool applyImageRadius;
  final String imageUrl;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
