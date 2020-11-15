import 'package:band_app/services/sockect_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:band_app/pages/home_page.dart';
import 'package:band_app/pages/status_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SockectService()),
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'status': (_) => StatusPage(),
        },
      ),
    );
  }
}
