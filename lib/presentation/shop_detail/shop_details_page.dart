import 'package:florify/constants/color/color_const.dart';
import 'package:flutter/material.dart';

class ShopDetailsPage extends StatelessWidget {
  const ShopDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            leading: const Icon(Icons.arrow_back),
            expandedHeight: 200,
            pinned: true,
            floating: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Centered Title',
                style: TextStyle(color: ColorConstants.black),
              ),
              centerTitle: true, // This centers the title
              background: Image.network(
                'https://via.placeholder.com/500',
                fit: BoxFit.cover,
              ),
            ),
            // Other SliverAppBar properties
            // ...
          ),
          // Other slivers or content for the CustomScrollView
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
