import 'package:flutter/material.dart';
import 'package:kusala/src/features/chat/presentation/pages/chat_page.dart';
import 'package:kusala/src/features/chat/presentation/pages/message_page.dart';
import 'package:kusala/src/features/kusala/presentation/pages/kusala_page.dart';

import '../../features/auth/login/presentation/pages/login_page.dart';
import '../../features/introduction/presentation/pages/introduction_page.dart';
import 'routes.dart';

class RouteManager {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.rootRoute:
        return MaterialPageRoute(
          builder: (context) => const IntroductionPage(),
        );

      case AppRoutes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case AppRoutes.kuslaRoute:
        return MaterialPageRoute(
          builder: (context) => const KusalaPage(),
        );
      case AppRoutes.chatRoute:
        return MaterialPageRoute(
          builder: (context) => const ChatPage(),
        );
      case AppRoutes.messageRoute:
        return MaterialPageRoute(
          builder: (context) => const MessagePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Text("Rota não existente"),
        );
    }
  }
}
