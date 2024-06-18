import 'package:edu_class/04_utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:edu_class/04_utils/app_colors.dart';

class WWButton extends StatelessWidget {
  const WWButton({
    Key? key,
    this.alignment,
    this.buttonTextStyle,
    this.height,
    this.width,
    this.text,
    this.onPressed,
    this.widget,
    this.buttonStyle,
    this.color,
    this.borderRadius,
    this.loading = false,
    this.loadingColor, // Optional loading color
    this.gradient,
    this.leading,
  }) : super(key: key);

  final ButtonStyle? buttonStyle;
  final Alignment? alignment;
  final TextStyle? buttonTextStyle;
  final String? text;
  final Widget? widget;
  final Color? color;
  final double? height;
  final double? width;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final bool loading;
  final Gradient? gradient;
  final Widget? leading;
  final Color? loadingColor; // Optional loading color

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: loading,
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient ??
                const LinearGradient(
                  colors: [
                    Color(0xFF1681E4),
                    Color(0xFF0056D6),
                  ],
                ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 10)),
          ),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
                ))),
            child: loading
                ? CupertinoActivityIndicator(
                    color: loadingColor ?? color ?? Colors.white)
                : widget ??
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          text ?? "",
                          textAlign: TextAlign.center,
                          style: buttonTextStyle ??
                              TextStyle(color: Colors.white, fontSize: 12.sp),
                        ),
                        if (leading != null) ...[sized0wx05, leading!]
                      ],
                    ),
          ),
        ),
      ),
    );
  }
}
