import 'package:appbangiay/common/widgets/image_text_widgets/vertical_imge_text.dart';
import 'package:appbangiay/features/shop/screens/sub_category/sub_categories.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HHomeCategories extends StatelessWidget {
  const HHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 80,
      child: ListView.builder(
       shrinkWrap: true,
       itemCount: 6,
       scrollDirection: Axis.horizontal,
       itemBuilder: (_, index) {
         
        return  HVerticallmageText(image: HImages.shoeIcon,title: 'shoes',onTap: () => Get.to(()=>const SubCategoriesScreen()));
       },
       ),
    );
  }
}

