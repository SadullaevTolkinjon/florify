import 'package:florify/presentation/order_complete/oformiliniy_view.dart';
import 'package:flutter/material.dart';

class OformileniyPage extends StatelessWidget {
  const OformileniyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        centerTitle: true,
        title: Text("Buyurtma tavfsilotlari"),
      ),
      body: OformiliniyView(),
    );
  }
}
