import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/widgets.dart';

import '../../../constants/app_sizes/app_sizes_const.dart';

class NameTitle extends StatelessWidget {
  const NameTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Text(
            "Rakhmatullo Madraximov",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: AppSizes.getH(context) * 0.024,
                fontWeight: FontWeight.w600),
          ),
          MyPadding(
            height: AppSizes.getH(context) * 0.008,
          ),
          Text(
            "+998901234567",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: AppSizes.getH(context) * 0.018,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
