import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
Future configure(String environment) async {
  $initGetIt(getIt, environment: environment);
}

abstract class Env {
  static const development = 'dev';
  static const production = 'prod';
}
