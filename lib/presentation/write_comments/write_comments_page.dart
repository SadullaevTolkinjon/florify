import 'package:florify/di/injection.dart';
import 'package:florify/domain/model/category_model/category_model.dart';
import 'package:florify/presentation/write_comments/cubit/write_comment_cubit.dart';
import 'package:florify/presentation/write_comments/write_comments_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WriteCommentsPage extends StatelessWidget {
  const WriteCommentsPage({
    super.key,
    required this.product,
  });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<WriteCommentCubit>(),
      child:  WriteCommentsView(product: product,),
    );
  }
}
