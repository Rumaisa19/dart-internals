// Repository<T> — abstract contract for all repositories
// Defines WHAT a repository must do, not HOW it does it
// Actual implementation lives in data/repositories/

import 'result_type.dart';

abstract interface class Repository<T> {
  Future<Result<T, String>> getById(String id);
  Future<Result<List<T>, String>> getAll();
  Future<Result<T, String>> create(T item);
  Future<Result<T, String>> update(T item);
  Future<Result<bool, String>> delete(String id);
}
