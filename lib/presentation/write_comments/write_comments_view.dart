import 'package:cached_network_image/cached_network_image.dart';
import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/constants/color/color_const.dart';
import 'package:florify/presentation/widgets/elevated_btn.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:florify/presentation/write_comments/components/comment_product_prize.dart';
import 'package:florify/presentation/write_comments/components/write_comment_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WriteCommentsView extends StatefulWidget {
  const WriteCommentsView({super.key});

  @override
  State<WriteCommentsView> createState() => _WriteCommentsViewState();
}

class _WriteCommentsViewState extends State<WriteCommentsView> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        title: const Text("Sharh qoldirish"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.geth(context, 0.02)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyPadding(
              height: AppSizes.geth(context, 0.02),
            ),
            const CommentProductPrize(),
            MyPadding(
              height: AppSizes.geth(context, 0.024),
            ),
            const Divider(
              height: 0,
              thickness: 1.5,
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.016),
            ),
            Text(
              "Umumiy baholash",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: AppSizes.geth(context, 0.016),
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.black),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.016),
            ),
            SizedBox(
              height: AppSizes.geth(context, 0.02),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: AppSizes.geth(context, 0.04),
                ignoreGestures: true,
                itemPadding: EdgeInsets.zero,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: ColorConstants.orange,
                ),
                onRatingUpdate: (rating) {},
                unratedColor: ColorConstants.kgrey,
              ),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.04),
            ),
            CommentTextfield(
              controller: _controller,
              validator: (p0) => "",
              helperText: "",
              hintText: "Sharh qoldiring(Ixtiyoriy)",
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.024),
            ),
            const Divider(
              height: 0,
              thickness: 1.5,
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.024),
            ),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Text(
                    "Anonim(Nomni yashirish)",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: AppSizes.geth(context, 0.016),
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.black),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CupertinoSwitch(
                      value: true,
                      activeColor: ColorConstants.selectedNavBarColor,
                      onChanged: (v) {},
                    ),
                  ),
                )
              ],
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.024),
            ),
            const Divider(
              height: 0,
              thickness: 1.5,
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.024),
            ),
            Text(
              "Rasm biriktirsh",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: AppSizes.geth(context, 0.016),
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.black),
            ),
            MyPadding(
              height: AppSizes.geth(context, 0.01),
            ),
            SizedBox(
              height: AppSizes.geth(context, 0.1),
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(left: AppSizes.geth(context, 0.01)),
                    child: Container(
                      height: AppSizes.geth(context, 0.1),
                      width: AppSizes.geth(context, 0.095),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                "https://static.tildacdn.com/tild3836-6438-4462-a130-366362663263/t0555-2.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            const Spacer(),
            SafeArea(
                child: ElevatedBtnWidget(
                    ontap: () {},
                    height: AppSizes.geth(context, 0.055),
                    width: double.infinity,
                    color: ColorConstants.selectedNavBarColor,
                    title: "Sharh qoldirish")),
            MyPadding(
              height: AppSizes.geth(context, 0.01),
            ),
          ],
        ),
      ),
    );
  }
}
