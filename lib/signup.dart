import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Web',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: ThirdScreen());
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                margin: EdgeInsets.all(24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _header(context),
                      _inputFields(context),
                      _loginInfo(context)
                    ]))));
  }

  _header(context) {
    return const Column(children: [
      Text("Hesap oluştur",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
      Text("Başlamak için ayrıntıları girin")
    ]);
  }

  _inputFields(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      TextField(
          decoration: InputDecoration(
              hintText: "Kullanıcı adı",
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none))),
      const SizedBox(height: 10),
      TextField(
          decoration: InputDecoration(
              hintText: "E-mail kimliği",
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none))),
      SizedBox(height: 10),
      TextField(
          decoration: InputDecoration(
            hintText: "Şifre",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.password_outlined),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
          ),
          obscureText: true),
      SizedBox(height: 10),
      TextField(
          decoration: InputDecoration(
              hintText: "Şifrenizi yeniden yazın",
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.password_outlined),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none)),
          obscureText: true),
      const SizedBox(height: 10),
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 16)),
          child: const Text("Giriş yap", style: TextStyle(fontSize: 20)))
    ]);
  }

  _loginInfo(context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text("Zaten hesabınız var mı?"),
      TextButton(onPressed: () {}, child: const Text("Giriş yap "))
    ]);
  }
}
