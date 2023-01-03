import 'package:first_app/provider/counter_state.dart';
import 'package:first_app/ui/pages/counter.page.dart';
import 'package:first_app/ui/pages/counter.provider.page.dart';
import 'package:first_app/ui/pages/gallery.page.dart';
import 'package:first_app/ui/pages/home.page.dart';
import 'package:first_app/ui/pages/meteo.page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CounterState())],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: const MyHomePage(),
        routes: {
          "/home": (context) => const MyHomePage(),
          "/meteo": (context) => const MeteoPage(),
          "/gallery": (context) => const GalleryPage(),
          "/counter": (context) => CounterPage(),
          "/counter_provider": (context) => CounterProviderPage(),
        },
        initialRoute: "/home",
      ),
    );
  }
}
