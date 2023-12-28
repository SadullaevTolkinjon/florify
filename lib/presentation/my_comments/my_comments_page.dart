import 'package:florify/constants/app_sizes/app_sizes_const.dart';
import 'package:florify/di/injection.dart';
import 'package:florify/presentation/my_comments/cubit/my_comments_cubit.dart';
import 'package:florify/presentation/widgets/buildable.dart';
import 'package:florify/presentation/widgets/empty_widget.dart';
import 'package:florify/presentation/widgets/error_widget.dart';
import 'package:florify/presentation/widgets/loader_widget.dart';
import 'package:florify/presentation/widgets/modal_progres_hud.dart';
import 'package:florify/presentation/widgets/my_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/my_comments_container.dart';

class MyCommentsPage extends StatelessWidget {
  const MyCommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<MyCommentsCubit>();
        cubit.fetchMyComments();
        return cubit;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Mening sharhlarim",
          ),
        ),
        body: BlocListener<MyCommentsCubit, MyCommentsState>(
          listener: (context, state) {},
          child:
              Buildable<MyCommentsCubit, MyCommentsState, MyCommentsBuildable>(
            properties: (buildable) => [
              buildable.loading,
              buildable.failed,
              buildable.error,
              buildable.success,
              buildable.comments,
            ],
            builder: (context, state) {
              if (state.loading) {
                return const LoaderWidget();
              }
              if (state.failed) {
                return ErrorWidgetCustom(ontap: () {
                  context.read<MyCommentsCubit>().fetchMyComments();
                });
              }
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.geth(context, 0.02),
                ),
                child: ModalProgressHUD(
                  inAsyncCall: state.isModalHud,
                  child: state.comments!.isNotEmpty
                      ? Column(
                          children: [
                            ...List.generate(
                              state.comments!.length,
                              (index) => Padding(
                                padding: EdgeInsets.only(
                                    top: AppSizes.geth(context, 0.01)),
                                child: MyCommentsContainer(
                                  comment: state.comments![index],
                                  ontap: () {},
                                ),
                              ),
                            )
                          ],
                        )
                      : EmptyWidget2(
                          ontap: () {},
                          title: "Mening sharhlarim bo'sh",
                        ),
                ),
              );

              // CustomScrollView(
              //   slivers: [
              //     SliverToBoxAdapter(
              //       child: MyPadding(
              //         height: AppSizes.geth(context, 0.02),
              //       ),
              //     ),
              //     state.comments!.isNotEmpty
              //         ? SliverPadding(
              //             padding: EdgeInsets.symmetric(
              //               horizontal: AppSizes.geth(context, 0.02),
              //             ),
              //             sliver: SliverGrid(
              //               delegate: SliverChildBuilderDelegate(
              //                 (context, index) => MyCommentsContainer(
              //                   comment: state.comments![index],
              //                 ),
              //                 childCount: state.comments!.length,
              //               ),
              //               gridDelegate:
              //                   SliverGridDelegateWithFixedCrossAxisCount(
              //                 crossAxisCount: 1,
              //                 mainAxisExtent: AppSizes.geth(context, 0.31),
              //                 mainAxisSpacing: AppSizes.geth(context, 0.025),
              //                 crossAxisSpacing: AppSizes.geth(context, 0.025),
              //               ),
              //             ),
              //           )
              //         : SliverToBoxAdapter(
              //             child: EmptyWidget2(
              //               ontap: () {},
              //               title: "Mening sharhlarim bo'sh",
              //             ),
              //           )
              //   ],
              // );
            },
          ),
        ),
      ),
    );
  }
}
