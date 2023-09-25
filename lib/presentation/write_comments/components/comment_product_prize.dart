
import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/card/components/korzina_product_container.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';

class CommentProductPrize extends StatelessWidget {
  const CommentProductPrize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: AppSizes.geth(context, 0.105),
          width: AppSizes.geth(context, 0.092),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                "https://avatars.mds.yandex.net/i?id=dfde1a6f9d6de55af6cc7e56c0ded5203950bfd9-8179580-images-thumbs&n=13",
              ),
            ),
          ),
        ),
        MyPadding(
          width: AppSizes.getH(context) * 0.02,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gullar va shokolad",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: AppSizes.geth(context, 0.019),
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.black),
              ),
              MyPadding(
                height: AppSizes.geth(context, 0.016),
              ),
              SizedBox(
                width: AppSizes.geth(context, 0.14),
                child: const ShopNameWidget(
                  shopName: "Store: Fendi",
                ),
              ),
              MyPadding(
                height: AppSizes.geth(context, 0.016),
              ),
            ],
          ),
        )
      ],
    );
  }
}
