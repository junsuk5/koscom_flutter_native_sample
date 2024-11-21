import 'package:flutter/material.dart';
import 'package:flutter_native_sample/presentation/main/main_state.dart';

class MainScreen extends StatelessWidget {
  final MainState state;
  final void Function() onGetTodo;

  const MainScreen({
    super.key,
    required this.state,
    required this.onGetTodo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('네이티브 연동'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onGetTodo,
              child: const Text('값 가져오기'),
            ),
            state.isLoading
                ? const Text('로딩중!!!')
                : Text(state.todo.toString()),
            Text('${state.values}'),
          ],
        ),
      ),
    );
  }
}
