import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/edit_profile/components/add_image_pic.dart';
import 'package:florify/presentation/edit_profile/components/text_formfield_profile.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({super.key});
  final TextEditingController _nameController =
      TextEditingController(text: "Rakhmatullo Madraximov");
  final TextEditingController _phoneController =
      TextEditingController(text: "+998901112233");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profil",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.geth(context, 0.105),
            ),
            child: SizedBox(
              height: AppSizes.geth(context, 0.165),
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: AppSizes.geth(context, 0.08),
                      backgroundImage: const CachedNetworkImageProvider(
                        "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?q=10&h=200",
                      ),
                    ),
                  ),
                  Positioned(
                    right: AppSizes.geth(context, 0.05),
                    bottom: AppSizes.geth(context, 0.01),
                    child: AddPictureWidget(
                      ontap: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.geth(context, 0.02),
              vertical: AppSizes.geth(context, 0.016),
            ),
            child: TextFormfieldProfile(
              controller: _nameController,
              validator: (v) {},
              hintText: "Ism familya",
              helperText: "Ism familya",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.geth(context, 0.02),
            ),
            child: TextFormfieldProfile(
              controller: _phoneController,
              validator: (v) {},
              hintText: "Telefon raqam",
              helperText: "Telefon raqam",
            ),
          ),
          const Spacer(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.geth(context, 0.02),
              ),
              child: ElevatedBtnWidget(
                ontap: () {},
                height: AppSizes.geth(context, 0.06),
                width: double.infinity,
                color: ColorConstants.selectedNavBarColor,
                title: "O'zgartirish",
              ),
            ),
          )
        ],
      ),
    );
  }
}
