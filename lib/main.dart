import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_chat/modules/isar/isar_chat_rooms.dart';
import 'package:supabase_chat/modules/isar/isar_chats.dart';
import 'package:supabase_chat/ui/auth/splash.dart';
import 'package:supabase_chat/modules/utils/styles.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

late Isar isar;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: dotenv.env['url']!,
    anonKey: dotenv.env['anonKey']!,
  );
  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open([IsarChatRoomsSchema,IsarChatsSchema], directory: dir.path);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          dialogBackgroundColor: Colors.white,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: grey, foregroundColor: menuIconColor),
          drawerTheme: DrawerThemeData(
              shape: Border.all(color: Colors.white),
              backgroundColor: Colors.white),
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                  color: menuIconColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              backgroundColor: Colors.white,
              foregroundColor: blacker),
          fontFamily: 'CustomFont',
          textSelectionTheme: TextSelectionThemeData(
              cursorColor: blacker, selectionColor: Colors.blue),
          scaffoldBackgroundColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme(
            errorBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            fillColor: const Color.fromARGB(255, 230, 230, 230),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          )),
      home: ProviderScope(child: const Splash()),
    );
  }
}
