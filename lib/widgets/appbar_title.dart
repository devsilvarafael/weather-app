import 'package:flutter/material.dart';
import 'package:tasks_flutter/core/app_export.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.text,
    this.margin,
    this.onTap,
  });
  final String text;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtAeonikBold21.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
