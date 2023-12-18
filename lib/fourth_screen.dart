import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giris_ekranlari/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => AuthBloc(),
        child: LoginScreen(),
      ),
    );
  }
}

class AuthBloc extends Bloc<String, User?> {
  AuthBloc() : super(null);

  Stream<User?> mapEventToState(String event) async* {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'example@email.com', // Kullanıcı adınıza uygun e-posta adresi
        password: 'password123', // Kullanıcı adınıza uygun şifre
      );
      yield userCredential.user;
    } catch (e) {
      print('Giriş hatası: $e');
      yield null;
    }
  }
}

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Ekranı'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add('login');
              },
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
