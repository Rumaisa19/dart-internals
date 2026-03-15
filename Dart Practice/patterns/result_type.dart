// Result<T, E> — wraps success or failure without throwing exceptions
// Used in repository layer to return typed errors instead of raw exceptions

sealed class Resullt<T, E> {
  const Resullt();
}
final class Success<T, E> extends Result<T, E>{
  final T data;
  const Success(this.data);
}
final class Failure<T, E> extends Result<T, E>{
  final E error;
  const Failure(this.error);
}
// Usage example:
// Result<User, String> result = Success(user);
// Result<User, String> result = Failure("User not found");
//
// switch (result) {
//   case Success(data: final user): print(user.name);
//   case Failure(error: final e): print(e);
// }