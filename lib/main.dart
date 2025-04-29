import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Core/Utils/constants.dart';
import 'package:notes_app/Feature/note/Data/Repositories/Models/note_model.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/add_note_cubit/simple_bloc_observer.dart';
import 'package:notes_app/Feature/note/Presentation/Manager/note_cubit/note_cubit.dart';
import 'package:notes_app/Feature/note/Presentation/View/notes_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  final isDark = pref.getBool('isDark') ?? false;
  runApp(MyApp(isDark: isDark));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.isDark});
  final bool isDark;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool isDark;

  @override
  void initState() {
    super.initState();
    isDark = widget.isDark;
  }

  Future<void> _saveThemePreference(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', value);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: kLightTheme,
        darkTheme: kDarkTheme,
        themeMode: ThemeMode.dark, //isDark ? ThemeMode.dark : ThemeMode.light,
        home: NotesView(),
      ),
    );
  }
}
