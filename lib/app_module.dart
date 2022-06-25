import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/home_page/home_page.dart';
import 'pages/splash_page/splash_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (context, args) => const HomePage()),
    ChildRoute('/splash', child: (context, args) => const SplashPage()),
    WildcardRoute(child: (context, args) => const NotFoundPage()),
  ];
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page not found'),
      ),
      body: const Center(
        child: Text('This page doesn’t exist'),
      ),
    );
  }
}
