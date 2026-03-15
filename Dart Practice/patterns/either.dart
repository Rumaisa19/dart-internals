// Either<L, R> — represents two possible values
// L = Left = failure/error (by convention)
// R = Right = success/value (by convention)

sealed class Either<L, R> {
  const Either();
}

final class Left<L, R> extends Either<L, R> {
  final L value;
  const Left(this.value);
}

final class Right<L, R> extends Either<L, R> {
  final R value;
  const Right(this.value);
}

// Usage example:
// Either<String, User> result = Right(user);
// Either<String, User> result = Left("Something went wrong");
//
// switch (result) {
//   case Right(value: final user): print(user.name);
//   case Left(value: final error): print(error);
// }