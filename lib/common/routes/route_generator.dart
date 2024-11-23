import 'package:flutter/material.dart';
import 'package:m8_it_solutions_assignment/common/routes/names.dart';
import 'package:m8_it_solutions_assignment/features/login/login_screen.dart';
import 'package:m8_it_solutions_assignment/features/register/register_screen.dart';
import 'package:m8_it_solutions_assignment/features/user_profiles/user_profile_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.Login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.Register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRoutes.UserProfile:
        return MaterialPageRoute(builder: (_) => const UserProfileScreen());     
      default:
        return _errorRoute();
    }

  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('No Route'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Sorry no route was found!', style: TextStyle(color: Colors.red, fontSize: 18.0)),
        ),
      );
    });
  }
}