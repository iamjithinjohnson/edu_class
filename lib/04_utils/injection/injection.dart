import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:edu_class/04_utils/injection/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureLocalDependancies() async => getIt.init();
