import 'package:flutter/material.dart';
import 'package:flutter_native_sample/data/repository/mock_todo_repository_impl.dart';
import 'package:flutter_native_sample/presentation/main/main_screen.dart';
import 'package:flutter_native_sample/presentation/main/main_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final viewModel = MainViewModel(MockTodoRepositoryImpl());

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListenableBuilder(
        listenable: viewModel,
        builder: (context, widget) {
          return MainScreen(
            state: viewModel.state,
            onGetTodo: () {
              viewModel.getTodo(1);
            },
          );
        },
      ),
    );
  }
}
