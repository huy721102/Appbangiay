import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/features/personalization/screens/address/add_new_address.dart';
import 'package:appbangiay/features/personalization/screens/address/widgets/single_address.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: HColors.primary,
        child: const Icon(Iconsax.add,color: HColors.white),
        ),
        appBar: HAppBar(
          showBackArrow: true,
          title: Text('address',style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(HSizes.defaultSpace),
            child: Column(
              children: [
              HSingleAddress(selecedAddress: false),
              HSingleAddress(selecedAddress: true),
              ],
              ),
              ),
        ),
    );
  }
}