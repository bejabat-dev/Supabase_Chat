import 'package:flutter/material.dart';
import 'package:supabase_chat/modules/utils/styles.dart';

class Pengaturan extends StatelessWidget {
  const Pengaturan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton(context),
        title: Text('Pengaturan'),
      ),
    );
  }
}
