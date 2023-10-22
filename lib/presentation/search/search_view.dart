import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/icons/icon_constants.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/search/components/search_textfield.dart';
import 'package:florify/presentation/widgets/product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        toolbarHeight: AppSizes.geth(context, 0.07),
        title: SearchTextfield(
          controller: _searchController,
          hintText: "Qidiruv",
          onChanged: (query) {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.geth(context, 0.02),
        ),
        child: CustomScrollView(
            slivers:

                // _buildFirstLook(),
                _buildProducts()),
      ),
    );
  }

  List<Widget> _buildFirstLook() {
    return [
      SliverPadding(
        padding: EdgeInsets.symmetric(vertical: AppSizes.geth(context, 0.02)),
        sliver: SliverToBoxAdapter(
          child: Text(
            "Ommabop",
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.02),
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      SliverGrid(
        delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
                  dense: true,
                  leading: SvgPicture.asset(IconConstants.search_icon),
                  title: Text(
                    "Yumshoq o‘yinchoqlar",
                    style: TextStyle(
                        fontSize: AppSizes.geth(context, 0.018),
                        fontWeight: FontWeight.w400),
                  ),
                  subtitle: const Divider(
                    height: 0,
                    thickness: 1.5,
                  ),
                ),
            childCount: 4),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: AppSizes.geth(context, 0.01),
          crossAxisSpacing: AppSizes.geth(context, 0.01),
          mainAxisExtent: AppSizes.geth(context, 0.06),
        ),
      )
    ];
  }

  List<Widget> _buildProducts() {
    return [
      SliverPadding(
        padding: EdgeInsets.symmetric(vertical: AppSizes.geth(context, 0.02)),
        sliver: SliverToBoxAdapter(
          child: Text(
            "Mahsulotlar",
            style: TextStyle(
                fontSize: AppSizes.geth(context, 0.02),
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) => ProductContainer(
            product: const Product(),
            ontap: () {
              Navigator.pushNamed(context, NavigatorConst.productDetails,
                  arguments: 2);
            },
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: AppSizes.getH(context) * 0.31,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      )
    ];
  }
}
