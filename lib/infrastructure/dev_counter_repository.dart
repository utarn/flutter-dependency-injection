import 'package:injectable/injectable.dart';

import '../domain/i_counter_repository.dart';
import '../services/injectable.dart';

@injectable
@RegisterAs(ICounterRepository, env: Env.development)
class DevCounterRepository implements ICounterRepository {
  @override
  int getIncrement() => 2;
}
