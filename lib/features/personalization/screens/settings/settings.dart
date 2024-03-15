import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:appbangiay/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:appbangiay/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/features/authentication/screens/login/login.dart';
import 'package:appbangiay/features/personalization/screens/address/address.dart';
import 'package:appbangiay/features/personalization/screens/profile/profile.dart';
import 'package:appbangiay/features/shop/screens/order/order.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
              HPrimaryHeaderContainer(
                child: Column(
                children: [HAppBar(title: Text('accout',style: Theme.of(context).textTheme.headlineMedium!.apply(color: HColors.white))),

                //user profiled card //HUserProfileTile
                  HUserProfileTile(onPressed: () => Get.to(()=> const ProfileScreen())),
                 const SizedBox(height: HSizes.spaceBtwSections),//cai nay la chinh khoang cach cai box mau xanh
                ],
              ),
              ),
            //body
              Padding(
              padding: const EdgeInsets.all(HSizes.defaultSpace),
              child: Column(
                children: [
                  // account setting
                  const HSectionHeading(title: 'account setting',showActionButton: false),
                  const SizedBox(height: HSizes.spaceBtwItems),

                   HSettingsMenuTile(
                    icon: Iconsax.safe_home, 
                    title: 'my address', 
                    subTitle: 'set shopping delivery address',
                    onTap: () => Get.to(()=>const UserAddressScreen()),
                    ),// co the them onTap: (){} de tuong tac
                  const HSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'my cart', subTitle: 'add, remove products and move to checkout'),
                   HSettingsMenuTile(icon: Iconsax.bag_tick, title: 'my orders', subTitle: 'In-progress and completed orders',onTap: () => Get.to(()=>const OrderScreen())),
                  const HSettingsMenuTile(icon: Iconsax.bank, title: 'bank account', subTitle: 'withdraw balance to registered bank account'),
                  const HSettingsMenuTile(icon: Iconsax.discount_shape, title: 'my coupons', subTitle: 'list of all discounted coupons'),
                  const HSettingsMenuTile(icon: Iconsax.notification, title: 'Notification', subTitle: 'set any kind of notification message'),
                  const HSettingsMenuTile(icon: Iconsax.security_card, title: 'account privacy', subTitle: 'Manage data usage and connected accounts'),

                  //app setting
                  const SizedBox(height: HSizes.spaceBtwSections),
                  const HSectionHeading(title: 'app setting',showActionButton: false),
                  const SizedBox(height: HSizes.spaceBtwItems),
                  const HSettingsMenuTile(icon: Iconsax.document_upload, title: 'load data', subTitle: 'up load data'),
                  HSettingsMenuTile(
                    icon: Iconsax.location, 
                    title: 'geolocation', 
                    subTitle: 'set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),// chu true o day la bat cong tat
                    ),

                     HSettingsMenuTile(
                    icon: Iconsax.security_user, 
                    title: 'safe mode', 
                    subTitle: 'search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    ),

                     HSettingsMenuTile(
                    icon: Iconsax.image, 
                    title: 'HD Image Quality', 
                    subTitle: 'set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                    ),
                  
                  // logout button
                  const SizedBox(height: HSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () => Get.to(() => const LoginScreen()),child: const Text('Dang xuat')),
                  ),
                  const SizedBox(height: HSizes.spaceBtwSections * 2.5),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}

