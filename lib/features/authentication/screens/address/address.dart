import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:t_store/common/widgets/TappBar/appbar.dart';
import 'package:t_store/features/authentication/screens/address/add_new_address.dart';
import 'package:t_store/features/authentication/screens/address/widgets/address_card.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        child: Icon(Icons.add),
      ),
      appBar: TappBar(
        showBackArrow: true,
        title: Text(
          "Address",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              AddressCard(
                selectedAddress: true,
              ),
              AddressCard(
                selectedAddress: false,
              ),
              AddressCard(
                selectedAddress: false,
              ),
              AddressCard(
                selectedAddress: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
