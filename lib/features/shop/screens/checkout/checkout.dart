import 'package:appbangiay/common/widgets/appbar/appbar.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:appbangiay/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:appbangiay/common/widgets/products/cart/cart_item.dart';
import 'package:appbangiay/common/widgets/products/cart/coupon_widget.dart';
import 'package:appbangiay/common/widgets/success_screen/success_screen.dart';
import 'package:appbangiay/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:appbangiay/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:appbangiay/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:appbangiay/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:appbangiay/navigation_menu.dart';
import 'package:appbangiay/utils/constants/colors.dart';
import 'package:appbangiay/utils/constants/image_strings.dart';
import 'package:appbangiay/utils/constants/sizes.dart';
import 'package:appbangiay/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

 @override
Widget build(BuildContext context) {
  final dark = HHelperFunctions.isDarkMode(context);

  return Scaffold(
    body: SingleChildScrollView(
      
        child: Column(
          children: [
            // Thêm HPrimaryHeaderContainer ở đây
            HPrimaryHeaderContainer(

              child: Column(
                
                children: [
                  HAppBar(
                    title: Text(
                      'THANH TOÁN',
                      style: Theme.of(context).textTheme.headlineMedium!.apply(color: HColors.white),
                    ),
                  ),
                  const SizedBox(height: HSizes.spaceBtwSections),
                  
                ],
              ),
            ),
            // Các item trong giỏ hàng
         const Padding(
              padding: EdgeInsets.all(HSizes.spaceBtnSections),
       
              child: HcartItems(), 
              
            ),
            const SizedBox(height: HSizes.spaceBtwSections),

            // Phần nhập mã giảm giá
            const HCouponCode(
              
            ),
            const SizedBox(height: HSizes.spaceBtwItems),

            // Phần thông tin thanh toán
            HRoundedContainer(
              width: 380,
              showBorder: true,
              padding: const EdgeInsets.all(HSizes.spaceBtnSections),
              backgroundColor: dark ? HColors.black : HColors.white,
              child: const Column(
                children: [
                  // Phần giá cả
                  HBillingAmountSection(),
                  SizedBox(height: HSizes.spaceBtnItems),

                  // Dòng phân cách
                  Divider(),
                  SizedBox(height: HSizes.spaceBtnItems),

                  // Phương thức thanh toán
                  HBillingPaymentSection(),
                  SizedBox(height: HSizes.spaceBtnItems),

                  // Địa chỉ giao hàng
                  HBillingAddressSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    
    // Nút thanh toán
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(HSizes.defaultSpace),
      child: ElevatedButton(
        
        onPressed: () => Get.to(
          () => SuccessScreen(
            image: HImages.successfulPaymentIcon,
            title: 'Payment success!',
            subTitle: 'Your item will be shipped soon',
            
            onPressed: () => Get.offAll(() => const NavigationMenu()),
            
            
          ),
        ),
          style: ElevatedButton.styleFrom(
    backgroundColor: HColors.primary, 
     minimumSize: Size(double.infinity, 36), //// Đặt màu nền của nút thành màu cam
 
    ),
        child: const Text('Thanh toán'),
      ),
    ),
  );
}
}