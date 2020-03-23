import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'infrastructure/counter_repository.dart';
import 'presentation/counter_change_notifier.dart';
import 'presentation/counter_page.dart';
import 'services/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configure(Env.development);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeNotifierProvider(
        create: (_) => getIt<CounterChangeNotifier>(),
        child: CounterPage(),
      ),
    );
  }
}
