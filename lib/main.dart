import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bootstrap.dart';
import 'src/data/local/plugins/shared_preferences_impl.dart';
import 'src/data/local/storage_todos_api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();

  final todosApi = StorageTodosApi(
    plugin: SharedPreferencesApi(sharedPreferences: pref),
  );

  bootstrap(todosApi: todosApi);
}
