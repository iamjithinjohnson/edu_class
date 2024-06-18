import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:edu_class/04_utils/main_failure/main_failure.dart';

part 'api_response_model.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  factory ApiResponse({
    T? data,
    int? statusCode,
    String? message,
    Map<MainFailure, dynamic>? error,
    @Default(1) int pageNo,
    @Default(false) bool loading,
    @Default(true) bool pagination,
    @Default(false) bool searchLoading,
    @Default(false) bool paginationLoading,
  }) = _ApiResponse<T>;
}
