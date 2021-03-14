import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';

import 'package:provider/provider.dart';
import 'package:todo_application_ddd/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';

extension FormTodosX on BuildContext {
  KtList<TodoItemPrimitive> get formTodos =>
      Provider.of<FormTodos>(this, listen: false).value;
  set formTodos(KtList<TodoItemPrimitive> value) =>
      Provider.of<FormTodos>(this, listen: false).value = value;
}
