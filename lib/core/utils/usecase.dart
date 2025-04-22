import 'result.dart';

abstract class UseCase<T, Params> {
  Future<Result<T>> call(Params params);
}

class NoParams {}
