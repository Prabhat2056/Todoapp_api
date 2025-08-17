import 'package:flutter/material.dart';
import 'package:to_do_app_api/screens/add_page.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo App')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateToAddPage,
        // Action to add a new todo
        label: Text('Add Todo'),
      ),
    );
  }

  void navigateToAddPage() {
    final route = MaterialPageRoute(builder: (context) => AddTodoPage());
    Navigator.push(context, route);
  }
}
