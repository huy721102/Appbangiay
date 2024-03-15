import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/images/h_circular_image.dart';
import 'package:appbangiay/common/widgets/texts/section_heading.dart';
import 'package:appbangiay/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const HAppBar(showBackArrow: true,title: Text('Profile')),
      //body
      body: SingleChildScrollView(
      child:Padding(
        padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: Column(
          children: [
            //profile picture
            SizedBox(
              width: double.infinity,
              child: Column(
               children: [
                const HCircularImage(image: HImages.user,width: 80,height: 80),
                TextButton(onPressed: (){}, child: const Text('change profile picture')),
               ],
              ),
            ),

            //details
            const SizedBox(height: HSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: HSizes.spaceBtwItems),

            //heading profile info
            const HSectionHeading(title: 'profile infomation',showActionButton: false),
            const SizedBox(height: HSizes.spaceBtwItems),

            HProfileMenu(title: 'name',value: 'xin chao huy',onPressed: () {}),
            HProfileMenu(title: 'username',value: 'xin chao huy',onPressed: () {}),

            const SizedBox(height: HSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: HSizes.spaceBtwItems),

            //heading persona info
            const HSectionHeading(title: 'personal information',showActionButton: false),
            const SizedBox(height: HSizes.spaceBtwItems),
             
            HProfileMenu(title: 'user ID',value: '12122',icon: Iconsax.copy,onPressed: () {}),
            HProfileMenu(title: 'E-mail',value: 'xin chao huy',onPressed: () {}),
            HProfileMenu(title: 'phonenumber',value: '0398343658',onPressed: () {}),
            HProfileMenu(title: 'gender',value: 'male',onPressed: () {}),
            HProfileMenu(title: 'date of birth',value: '12/12/2002',onPressed: () {}),
            const Divider(),
            const SizedBox(height: HSizes.spaceBtwItems),
            
            Center(
              child: TextButton(
                onPressed: (){},
                child: const Text('close account',style: TextStyle(color: Colors.red)),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

