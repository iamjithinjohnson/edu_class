// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthViewModel on AuthViewModelBase, Store {
  late final _$passVisibilityAtom =
      Atom(name: 'AuthViewModelBase.passVisibility', context: context);

  @override
  bool get passVisibility {
    _$passVisibilityAtom.reportRead();
    return super.passVisibility;
  }

  @override
  set passVisibility(bool value) {
    _$passVisibilityAtom.reportWrite(value, super.passVisibility, () {
      super.passVisibility = value;
    });
  }

  late final _$loginResponseAtom =
      Atom(name: 'AuthViewModelBase.loginResponse', context: context);

  @override
  ApiResponse<dynamic> get loginResponse {
    _$loginResponseAtom.reportRead();
    return super.loginResponse;
  }

  @override
  set loginResponse(ApiResponse<dynamic> value) {
    _$loginResponseAtom.reportWrite(value, super.loginResponse, () {
      super.loginResponse = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('AuthViewModelBase.login', context: context);

  @override
  Future<int?> login(
      {required BuildContext context,
      required String username,
      required String password}) {
    return _$loginAsyncAction.run(() =>
        super.login(context: context, username: username, password: password));
  }

  late final _$AuthViewModelBaseActionController =
      ActionController(name: 'AuthViewModelBase', context: context);

  @override
  void loginPassVisible() {
    final _$actionInfo = _$AuthViewModelBaseActionController.startAction(
        name: 'AuthViewModelBase.loginPassVisible');
    try {
      return super.loginPassVisible();
    } finally {
      _$AuthViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passVisibility: ${passVisibility},
loginResponse: ${loginResponse}
    ''';
  }
}
