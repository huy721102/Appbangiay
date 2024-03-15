import 'package:appbangiay/common/widgets/images/h_circular_image.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HUserProfileTile extends StatelessWidget {
  const HUserProfileTile({
    super.key, 
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: const HCircularImage(image: HImages.user,width: 50, height: 50, padding: 0),
     title: Text('xin chao huy',style: Theme.of(context).textTheme.headlineSmall!.apply(color: HColors.white)),
     subtitle: Text('phamhuy721102@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: HColors.white)),
     trailing: IconButton(onPressed: onPressed,icon:const Icon(Iconsax.edit,color: HColors.white)),
   );
  }
}