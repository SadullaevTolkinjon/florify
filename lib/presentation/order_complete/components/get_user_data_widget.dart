
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/presentation/edit_profile/components/text_formfield_profile.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetUserDataWidget extends StatelessWidget {
  const GetUserDataWidget({
    super.key,
    required TextEditingController nameController,
    required TextEditingController surnameController,
    required TextEditingController phoneController,
  })  : _nameController = nameController,
        _surnameController = surnameController,
        _phoneController = phoneController;

  final TextEditingController _nameController;
  final TextEditingController _surnameController;
  final TextEditingController _phoneController;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Buyurtma qabul qiluvchi",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: AppSizes.geth(context, 0.018),
              fontWeight: FontWeight.w600,
            ),
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          TextFormfieldProfile(
            controller: _nameController,
            validator: (v) {},
            hintText: "Ism",
            helperText: "Ism",
            heleperTextColor: ColorConstants.black,
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          TextFormfieldProfile(
            controller: _surnameController,
            validator: (v) {},
            hintText: "Familya",
            helperText: "Familya",
            heleperTextColor: ColorConstants.black,
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          TextFormfieldProfile(
            controller: _phoneController,
            validator: (v) {},
            hintText: "Telefon raqami",
            helperText: "Telefon raqami",
            heleperTextColor: ColorConstants.black,
          ),
          MyPadding(
            height: AppSizes.geth(context, 0.02),
          ),
          Row(
            children: [
              SvgPicture.asset(
                IconConstants.info,
                color: ColorConstants.blue,
              ),
              MyPadding(
                width: AppSizes.geth(context, 0.01),
              ),
              Expanded(
                child: Text(
                  'Siz ko‘rsatgan telefon raqamiga buyurtma holati haqida bildirishnoma yuboramiz',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: AppSizes.geth(context, 0.014),
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.blue,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
