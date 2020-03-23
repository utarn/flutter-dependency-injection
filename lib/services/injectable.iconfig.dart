// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:injectable_example/infrastructure/counter_repository.dart';
import 'package:injectable_example/domain/i_counter_repository.dart';
import 'package:injectable_example/infrastructure/dev_counter_repository.dart';
import 'package:injectable_example/presentation/counter_change_notifier.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<CounterChangeNotifier>(
      () => CounterChangeNotifier(g<ICounterRepository>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerFactory<ICounterRepository>(() => CounterRepository());
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerFactory<ICounterRepository>(() => DevCounterRepository());
  }
}
