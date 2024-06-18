import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.serverFailure() = _ServerFailure;
  const factory MainFailure.clientFailure() = _ClientFailure;
  const factory MainFailure.networkFailure() = _NetworkFailure;
  const factory MainFailure.timeout() = _Timeout;
}
