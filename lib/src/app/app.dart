import 'package:flutter/material.dart';

import '../configs/routes/route_manager.dart';
import '../configs/themes/theme.dart';

class KusalaApp extends StatelessWidget {
  const KusalaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteManager.onGenerateRoute,
    );
  }
}
