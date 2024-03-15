import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:appbangiay/common/widgets/icons/h_circular_icon.dart';
import 'package:appbangiay/common/widgets/images/h_rounded_image.dart';
import 'package:appbangiay/common/widgets/products/cart/add_remove_button.dart';
import 'package:appbangiay/common/widgets/products/cart/cart_item.dart';
import 'package:appbangiay/common/widgets/texts/h_brand_title_text_with_verified_icon.dart';
import 'package:appbangiay/common/widgets/texts/product_price_text.dart';
import 'package:appbangiay/common/widgets/texts/product_title_text.dart';
import 'package:appbangiay/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:appbangiay/features/shop/screens/checkout/checkout.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
          body: SingleChildScrollView(
        child: Column(
          children: [
    
            HPrimaryHeaderContainer(
              child: Column(
               
                  children: [HAppBar(title: Text('DANH SÁCH GIỎ HÀNG ',style: Theme.of(context).textTheme.headlineMedium!.apply(color: HColors.white)
                  )),
                  
                   const SizedBox(height: HSizes.spaceBtwSections),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(HSizes.spaceBtnSections),
       
              child: HcartItems(), // Đảm bảo rằng HcartItems là một widget được định nghĩa
            ),
          ],
        ),
      ),
 bottomNavigationBar: Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(HSizes.defaultSpace),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tổng số lượng:'),
                Text('2'), // Số lượng sản phẩm
              ],
            ),
            const SizedBox(height: 8), // Khoảng cách giữa các hàng
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('TỔNG (đã tính thuế)'),
                Text('9.999.999đ'), // Tổng tiền
              ],
            ),
            const SizedBox(height: 16), // Khoảng cách giữa thông tin và nút
            ElevatedButton(
              onPressed: () => Get.to(() => const CheckoutScreen()),
              style: ElevatedButton.styleFrom(
                backgroundColor: HColors.primary, // Màu nền của nút
                minimumSize: const Size(double.infinity, 36), // Chiều rộng tối đa và chiều cao cố định
              ),
              child: const Text('THANH TOÁN'),
            ),
          ],
        ),
      ),
    ),
        );
      
    
  
  
}

}