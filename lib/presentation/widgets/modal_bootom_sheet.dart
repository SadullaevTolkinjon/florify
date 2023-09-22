import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future showModalSheetWidget(BuildContext context, Widget showSomething,
    {isDismissible}) {
  return showMaterialModalBottomSheet(
    backgroundColor: Colors.transparent,
    elevation: 0,
    enableDrag: true,
    isDismissible: isDismissible ?? true,
    context: context,
    bounce: true,
    builder: (context) => showSomething,
  );
}
