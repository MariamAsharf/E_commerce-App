import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomTextWgt extends StatelessWidget {
  const CustomTextWgt(
      {this.maxLines,
      this.fontSize,
      super.key,
      this.fontWeight,
      this.textStyle ,
      required this.data});

  final String data;
  final double? fontSize;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextStyle? textStyle ;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      
      data,
      
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: textStyle,
    );
  }
}