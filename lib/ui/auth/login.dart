import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:supabase_chat/ui/auth/register.dart';
import 'package:supabase_chat/modules/riverpod/user.dart';
import 'package:supabase_chat/modules/utils/utils.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _myKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  void _login(BuildContext context) {
    if (_myKey.currentState!.validate()) {
      login(context, _email.text, _password.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _myKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Masuk ke Chat app',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email harus diisi';
                    }
                    return null;
                  },
                  controller: _email,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail), hintText: 'Email'),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Kata sandi harus diisi';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  controller: _password,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password), hintText: 'Kata sandi'),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Expanded(child: SizedBox()),
                    InkWell(
                      onTap: () {
                        showLoadingDialog(context);
                      },
                      child: Text(
                        'Lupa kata sandi?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  child: InkWell(
                    onTap: () {
                      _login(context);
                    },
                    child: SizedBox(
                        height: 40,
                        width: 250,
                        child: Center(
                            child: Text(
                          'Masuk',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Belum punya akun ?'),
                    InkWell(
                        onTap: () {
                          navigate(context, Register());
                        },
                        child: Text(' Daftar',
                            style: TextStyle(color: Colors.blue))),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 40,
                  width: 250,
                  child: SignInButton(
                    padding: EdgeInsets.all(10),
                    elevation: 1,
                    text: 'Masuk dengan Google',
                    Buttons.Google,
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          )),
    );
  }
}
