// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loginreqmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginReqModel _$LoginReqModelFromJson(Map<String, dynamic> json) {
  return _LoginReqModel.fromJson(json);
}

/// @nodoc
mixin _$LoginReqModel {
  @JsonKey(name: "username", includeToJson: true)
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "password", includeToJson: true)
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginReqModelCopyWith<LoginReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginReqModelCopyWith<$Res> {
  factory $LoginReqModelCopyWith(
          LoginReqModel value, $Res Function(LoginReqModel) then) =
      _$LoginReqModelCopyWithImpl<$Res, LoginReqModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "username", includeToJson: true) String? username,
      @JsonKey(name: "password", includeToJson: true) String? password});
}

/// @nodoc
class _$LoginReqModelCopyWithImpl<$Res, $Val extends LoginReqModel>
    implements $LoginReqModelCopyWith<$Res> {
  _$LoginReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginReqModelImplCopyWith<$Res>
    implements $LoginReqModelCopyWith<$Res> {
  factory _$$LoginReqModelImplCopyWith(
          _$LoginReqModelImpl value, $Res Function(_$LoginReqModelImpl) then) =
      __$$LoginReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username", includeToJson: true) String? username,
      @JsonKey(name: "password", includeToJson: true) String? password});
}

/// @nodoc
class __$$LoginReqModelImplCopyWithImpl<$Res>
    extends _$LoginReqModelCopyWithImpl<$Res, _$LoginReqModelImpl>
    implements _$$LoginReqModelImplCopyWith<$Res> {
  __$$LoginReqModelImplCopyWithImpl(
      _$LoginReqModelImpl _value, $Res Function(_$LoginReqModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LoginReqModelImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$LoginReqModelImpl implements _LoginReqModel {
  _$LoginReqModelImpl(
      {@JsonKey(name: "username", includeToJson: true) this.username,
      @JsonKey(name: "password", includeToJson: true) this.password});

  factory _$LoginReqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginReqModelImplFromJson(json);

  @override
  @JsonKey(name: "username", includeToJson: true)
  final String? username;
  @override
  @JsonKey(name: "password", includeToJson: true)
  final String? password;

  @override
  String toString() {
    return 'LoginReqModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginReqModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginReqModelImplCopyWith<_$LoginReqModelImpl> get copyWith =>
      __$$LoginReqModelImplCopyWithImpl<_$LoginReqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginReqModelImplToJson(
      this,
    );
  }
}

abstract class _LoginReqModel implements LoginReqModel {
  factory _LoginReqModel(
      {@JsonKey(name: "username", includeToJson: true) final String? username,
      @JsonKey(name: "password", includeToJson: true)
      final String? password}) = _$LoginReqModelImpl;

  factory _LoginReqModel.fromJson(Map<String, dynamic> json) =
      _$LoginReqModelImpl.fromJson;

  @override
  @JsonKey(name: "username", includeToJson: true)
  String? get username;
  @override
  @JsonKey(name: "password", includeToJson: true)
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginReqModelImplCopyWith<_$LoginReqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
