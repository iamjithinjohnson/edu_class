import 'package:flutter/material.dart';
import 'package:edu_class/00_models/common_models/api_response_model.dart/api_response_model.dart';
import 'package:edu_class/03_widgets/ww_customLoading.dart';
import 'package:edu_class/03_widgets/ww_popup_error.dart';
import 'package:edu_class/03_widgets/ww_empty_data.dart';

class WWResponseHandler extends StatelessWidget {
  final ApiResponse<dynamic> data;
  final Future<void> Function()? onRefresh;
  final bool? isEmpty;
  final Function() onTap;
  final Widget child;
  const WWResponseHandler({
    super.key,
    required this.data,
    this.onRefresh,
    required this.isEmpty,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Widget handerUI() => data.loading
        ? wwCustomLoader()
        : data.error != null
            ? Center(child: wwErrorData(onTap: onTap, mainFailure: data.error))
            : isEmpty ?? true
                ? const WWEmptyData()
                : child;

    return onRefresh != null
        ? RefreshIndicator(onRefresh: onRefresh!, child: handerUI())
        : handerUI();
  }
}
