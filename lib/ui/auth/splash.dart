import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_chat/ui/auth/login.dart';
import 'package:supabase_chat/ui/navigation/home.dart';
import 'package:supabase_chat/modules/riverpod/user.dart';
import 'package:supabase_chat/modules/utils/utils.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void checkUser() async {
    await Future.delayed(Duration(seconds: 1));
    if (supabase.auth.currentSession != null) {
      if (mounted) {
        navigateAndClear(context, ProviderScope(child: const Home()));
      }
    } else {
      if (mounted) {
        navigateAndClear(context, Login());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    checkUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Chat App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
