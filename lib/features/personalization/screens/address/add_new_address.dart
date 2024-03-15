import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HAppBar(showBackArrow: true,title: Text('add new address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(HSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name')),
                const SizedBox(height: HSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'phone number')),
                const SizedBox(height: HSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street'))),
                    const SizedBox(width: HSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Postal code'))),
                  ],
                ),
                const SizedBox(height: HSizes.spaceBtwInputFields),
                  Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'city'))),
                    const SizedBox(width: HSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'state'))),
                  ],
                ),
                 const SizedBox(height: HSizes.spaceBtwInputFields),
                 TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'country')),
                 const SizedBox(height: HSizes.defaultSpace),
                 SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},child: const Text('save'))),
              ],
            ),
          ),
          ),
      ),
    );
  }
}