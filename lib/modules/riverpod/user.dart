import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_chat/ui/navigation/home.dart';
import 'package:supabase_chat/modules/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user.g.dart';

final supabase = Supabase.instance.client;

Future<void> register(
    BuildContext context, String name, String email, String password) async {
  try {
    final AuthResponse res = await supabase.auth.signUp(
      email: email,
      password: password,
    );
    final Session? session = res.session;
    final User? user = res.user;
    if (session != null && user != null) {
      await supabase.auth
          .updateUser(UserAttributes(data: {'name': name}))
          .then((value) {
        if (context.mounted) {
          navigateAndClear(context, ProviderScope(child: const Home()));
        }
      });
    }
  } on Exception catch (e) {
    debugPrint(e.toString());
  }
}

Future<void> login(BuildContext context, String email, String password) async {
  showLoadingDialog(context);
  try {
    final AuthResponse res = await supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
    final Session? session = res.session;
    final User? user = res.user;
    if (session != null && user != null) {
      if (context.mounted) {
        Navigator.pop(context);
        navigateAndClear(context, ProviderScope(child: const Home()));
      }
    }
  } on Exception catch (e) {
    if (e.toString().contains('400')) {
      if (context.mounted) {
        Navigator.pop(context);
        showErrorDialog(context, 'Email atau kata sandi salah');
      }
    }
  }
}

@riverpod
User getUser(GetUserRef ref) {
  return supabase.auth.currentUser!;
}
