import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry_food/Core/constants/app_colors.dart';
import 'package:hungry_food/Feature/profile/presentation/views/widgets/custom_payment_card_profile_page.dart';
import 'package:hungry_food/Feature/profile/presentation/views/widgets/custom_profile_page_text_fields.dart';
import 'package:hungry_food/Feature/profile/presentation/views/widgets/custom_profile_view_btn.dart';
import 'package:hungry_food/Feature/profile/presentation/views/widgets/custom_profile_view_image.dart';

class Profileviewbody extends StatelessWidget {
  const Profileviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.kprimarycolor,
          automaticallyImplyLeading: true,
          foregroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.settings_solid),
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap(30),
              CustomProfileViewImage(),
              CustomProfilePageTextFields(),
              Divider(
                indent: 30,
                endIndent: 30,
                color: AppColors.kprimarycolor.withOpacity(0.3),
                thickness: 2,
              ),
              Gap(10),
              CuustomPaymentCardinProfilePage(),

              Gap(120),
            ],
          ),
        ),
        bottomSheet: CustomProfileViewBtn(),
      ),
    );
  }
}
