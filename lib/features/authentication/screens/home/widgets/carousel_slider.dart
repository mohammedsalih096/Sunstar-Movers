import 'package:flutter/cupertino.dart';
import '../../../../../utils/constants/sizes.dart';

class BannerImageContainer extends StatelessWidget {
  const BannerImageContainer({super.key, required this.bannerImage});
  final String bannerImage;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(TSizes.md)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(TSizes.md),
            child: Image(image: AssetImage(bannerImage))));
  }
}
