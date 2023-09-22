import 'package:florify/presentation/my_comments/my_comments_page.dart';
import 'package:florify/presentation/notification/notification_page.dart';
import 'package:florify/presentation/oferta/oferta_page.dart';
import 'package:florify/presentation/order_complete/oformileniya_page.dart';
import 'package:florify/presentation/product_details/product_details_page.dart';
import 'package:florify/presentation/promokod_add_page/promokod_add_page.dart';
import 'package:florify/presentation/promokod_page/promokod_page.dart';
import 'package:florify/presentation/security_page/security_page.dart';
import 'package:florify/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:florify/constants/navigator/navigator_const.dart';
import 'package:florify/presentation/home/home_page.dart';

class OngenerateRoutes {
  static final OngenerateRoutes _instance = OngenerateRoutes._init();

  static OngenerateRoutes get instance => _instance;

  OngenerateRoutes._init();

  Route? routeGenerator(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case NavigatorConst.home:
        return sampleRoute(const HomePage());
      case NavigatorConst.initialScreeen:
        return sampleRoute(const SplashScreen());
      case NavigatorConst.notificationPage:
        return sampleRoute(const NotificationPage());
      case NavigatorConst.productDetails:
        return sampleRoute(const ProductDetailsPage());
      case NavigatorConst.oformiliniya:
        return sampleRoute(const OformileniyPage());
      case NavigatorConst.promokodPage:
        return sampleRoute(const PromokodPage());
      case NavigatorConst.promokodAddPage:
        return sampleRoute(const PromokodAddPage());
      case NavigatorConst.oferta:
        return sampleRoute(const OfertaPage());
      case NavigatorConst.securityPage:
        return sampleRoute(const SecurityPage());
      case NavigatorConst.my_comments_page:
        return sampleRoute(const MyCommentsPage());
    }

    return null;
  }

  sampleRoute(Widget route) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 200),
      reverseTransitionDuration: const Duration(microseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) => FadeTransition(
        opacity: animation,
        child: route,
      ),
    );
  }
}
