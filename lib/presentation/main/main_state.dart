import '../../domain/model/todo.dart';

class MainState {
  final Todo? todo;
  final bool isLoading;

  const MainState({
    required this.todo,
    required this.isLoading,
  });

  MainState copyWith({
    Todo? todo,
    bool? isLoading,
  }) {
    return MainState(
      todo: todo ?? this.todo,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  String toString() {
    return 'MainState(todo: $todo, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MainState &&
        other.todo == todo &&
        other.isLoading == isLoading;
  }

  @override
  int get hashCode => todo.hashCode ^ isLoading.hashCode;
}
