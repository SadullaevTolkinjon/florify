
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:flutter/material.dart';

class TitleRowOrderHistory extends StatelessWidget {
  const TitleRowOrderHistory({
    super.key,
    required this.subtitle,
    required this.title,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSizes.geth(context, 0.014)),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: AppSizes.geth(context, 0.014),
                  fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            flex: 6,
            child: Text(
              subtitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: AppSizes.geth(context, 0.014),
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
