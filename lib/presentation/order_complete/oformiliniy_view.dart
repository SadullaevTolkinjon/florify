import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/order_complete/components/change_location_widget.dart';
import 'package:florify/presentation/order_complete/components/dilivery_time_widget.dart';
import 'package:florify/presentation/order_complete/components/get_user_data_widget.dart';
import 'package:florify/presentation/order_complete/components/payment_type_wiidget.dart';
import 'package:florify/presentation/order_complete/components/price_widget.dart';
import 'package:florify/presentation/order_complete/components/products_widget.dart';
import 'package:florify/presentation/order_complete/components/tabriknoma_title.dart';
import 'package:florify/presentation/order_complete/components/title_row.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/write_comments/components/write_comment_textfield.dart';
import 'package:flutter/material.dart';

class OformiliniyView extends StatefulWidget {
  const OformiliniyView({super.key});

  @override
  State<OformiliniyView> createState() => _OformiliniyViewState();
}

class _OformiliniyViewState extends State<OformiliniyView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _tabriknomaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.geth(context, 0.02),
      ),
      child: CustomScrollView(
        slivers: [
          _buildPadding(context, 0.025),
          const TitleRowComplete(
            title: "Mahsulotlar",
          ),
          _buildPadding(context, 0.014),
          const OformiliniyaProducts(),
          _buildPadding(context, 0.02),
          _buildDivider(),
          _buildPadding(context, 0.024),
          const ChangeLocationWidget(),
          _buildPadding(context, 0.024),
          _buildDivider(),
          _buildPadding(context, 0.024),
          const TitleRowComplete(
            title: "Yetkazib berish vaqti",
          ),
          _buildPadding(context, 0.012),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "3 soat ichida",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: AppSizes.geth(context, 0.016),
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: AppSizes.geth(context, 0.02),
                )
              ],
            ),
          ),
          _buildPadding(context, 0.02),
          const DeliveryTimeWidget(),
          _buildPadding(context, 0.02),
          _buildDivider(),
          _buildPadding(context, 0.02),
          GetUserDataWidget(
            nameController: _nameController,
            surnameController: _surnameController,
            phoneController: _phoneController,
          ),
          _buildPadding(context, 0.02),
          _buildDivider(),
          _buildPadding(context, 0.02),
          const TitleRowComplete(
            title: "To'lov turi",
          ),
          _buildPadding(context, 0.02),
          const PaymentTypeWidget(),
          _buildPadding(context, 0.02),
          _buildDivider(),
          _buildPadding(context, 0.02),
          const TabriknomaTitle(),
          _buildPadding(context, 0.02),
          SliverToBoxAdapter(
            child: CommentTextfield(
              controller: _tabriknomaController,
              validator: (p0) => "",
              helperText: "",
              hintText: "Tabriknoma matnini kiriting",
            ),
          ),
          _buildPadding(context, 0.02),
          _buildDivider(),
          _buildPadding(context, 0.02),
          const TitleRowComplete(
            title: "Buyurtmangiz:",
          ),
          _buildPadding(context, 0.02),
          const PriceWidget(
            title: "Mahsulotlar(3):",
            price: "2000000",
            isBold: false,
          ),
          _buildPadding(context, 0.02),
          const PriceWidget(
            title: "Jami:",
            price: "2030000",
            isBold: true,
          ),
          _buildPadding(context, 0.04),
          _buildDivider(),
          _buildPadding(context, 0.02),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.geth(context, 0.02),
            ),
            sliver: SliverToBoxAdapter(
              child: ElevatedBtnWidget(
                ontap: () {},
                height: AppSizes.geth(context, 0.06),
                width: double.infinity,
                color: ColorConstants.selectedNavBarColor,
                title: "Buyurtma berish",
              ),
            ),
          ),
          _buildPadding(context, 0.02),
          _buildDivider(),
          _buildPadding(context, 0.02),
        ],
      ),
    );
  }

  _buildPadding(BuildContext context, double size) {
    return SliverToBoxAdapter(
      child: MyPadding(
        height: AppSizes.geth(context, size),
      ),
    );
  }

  _buildDivider() {
    return SliverToBoxAdapter(
      child: Divider(
        height: 0.5,
        thickness: 0.5,
        color: ColorConstants.black.withOpacity(0.3),
      ),
    );
  }
}
