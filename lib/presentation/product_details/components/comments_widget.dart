import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/domain/model/my_comments/my_comments_model.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({super.key, required this.comments});
  final List<Comment> comments;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          comments.length,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: AppSizes.geth(context, 0.02)),
            child: SizedBox(
              height: AppSizes.geth(context, 0.170),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorConstants.yellow,
                        radius: AppSizes.geth(context, 0.03),
                      ),
                      MyPadding(
                        width: AppSizes.geth(context, 0.01),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: AppSizes.geth(context, 0.16),
                            child: Text(
                              "Sender",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: AppSizes.geth(context, 0.016),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          MyPadding(
                            height: AppSizes.geth(context, 0.01),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: AppSizes.geth(context, 0.02),
                            child: RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              ignoreGestures: true,
                              wrapAlignment: WrapAlignment.start,
                              itemPadding: EdgeInsets.zero,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              unratedColor: ColorConstants.kgrey,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Text(
                          "June 13, 2023",
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: AppSizes.geth(context, 0.016),
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  MyPadding(
                    height: AppSizes.geth(context, 0.01),
                  ),
                  Expanded(
                    child: Text(
                      comments[index].text ?? "",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  MyPadding(
                    height: AppSizes.geth(context, 0.008),
                  ),
                  const Divider(
                    height: 0,
                    thickness: 1.5,
                  )
                ],
              ),
            ),
          ),
        ),
        MyPadding(
          height: AppSizes.geth(context, 0.024),
        ),
        ElevatedBtnWidget(
          ontap: () {},
          height: AppSizes.geth(context, 0.055),
          width: double.infinity,
          color: ColorConstants.kgrey,
          title: "Hammasini ko'rsatish",
          titleColor: ColorConstants.black,
        )
      ],
    );
  }
}
