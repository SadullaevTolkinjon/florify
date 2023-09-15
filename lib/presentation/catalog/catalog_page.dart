import 'package:florify/presentation/catalog/catalog_view.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: CatalogView(  ),
    );
  }
}
