import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key, required this.selectedAddress});
  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(TSizes.md),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              color: selectedAddress ? Colors.transparent : TColors.grey),
          color: selectedAddress
              ? TColors.primary.withOpacity(0.5)
              : Colors.transparent),
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? TColors.dark : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mohammed Salih S A",
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: TSizes.sm / 2,
              ),
              Text(
                "+98786895973",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: TSizes.sm / 2,
              ),
              Text(
                "S A manzil,Thottakkara,Pathakkara(p.o),Perinthalamanna,malappuram",
                style: Theme.of(context).textTheme.titleSmall,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }
}
