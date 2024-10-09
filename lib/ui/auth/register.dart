import 'package:flutter/material.dart';
import 'package:supabase_chat/modules/riverpod/user.dart';
import 'package:supabase_chat/modules/utils/styles.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final _myKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  void _register(BuildContext context) {
    if (_myKey.currentState!.validate()) {
      register(context, _name.text, _email.text, _password.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithBackButton(context),
      body: Form(
          key: _myKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Daftar akun baru',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama harus diisi';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  controller: _name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person), hintText: 'Nama'),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email harus diisi';
                    }
                    if (!value.contains('@')) {
                      return 'Email tidak valid';
                    }
                    return null;
                  },
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail), hintText: 'Email'),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Kata sandi harus diisi';
                    }
                    if (value.length < 7) {
                      return 'Kata sandi harus lebih dari 7 karakter';
                    }
                    return null;
                  },
                  controller: _password,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password), hintText: 'Kata sandi'),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (_password.text != value) {
                      return 'Kata sandi tidak sama';
                    }
                    return null;
                  },
                  controller: _confirmPassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: 'Ulangi kata sandi'),
                ),
                const SizedBox(
                  height: 24,
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  child: InkWell(
                    onTap: () {
                      _register(context);
                    },
                    child: SizedBox(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                              child: Text(
                            'Daftar',
                            style: TextStyle(color: Colors.white),
                          )),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Kembali',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  height: 90,
                )
              ],
            ),
          )),
    );
  }
}
