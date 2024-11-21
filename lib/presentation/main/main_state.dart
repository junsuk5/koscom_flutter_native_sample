import '../../domain/model/todo.dart';

class MainState {
  final Todo? todo;
  final bool isLoading;
  final (double, double, double) values;

  const MainState({
    this.todo,
    this.isLoading = false,
    this.values = (0.0, 0.0, 0.0),
  });

  MainState copyWith({
    Todo? todo,
    bool? isLoading,
    (double, double, double)? values,
  }) {
    return MainState(
      todo: todo ?? this.todo,
      isLoading: isLoading ?? this.isLoading,
      values: values ?? this.values,
    );
  }

  @override
  String toString() {
    return 'MainState(todo: $todo, isLoading: $isLoading, values: ${values.$1}, ${values.$2}, ${values.$3})';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MainState &&
        other.todo == todo &&
        other.isLoading == isLoading &&
        other.values == values;
  }

  @override
  int get hashCode =>
      todo.hashCode ^
      isLoading.hashCode ^
      values.hashCode;
}