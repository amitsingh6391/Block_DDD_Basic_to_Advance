import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_application_ddd/application/auth/auth_bloc.dart';
import 'package:todo_application_ddd/injection.dart';
import 'package:todo_application_ddd/presentation/routes/router.gr.dart';
import 'package:todo_application_ddd/presentation/sign_in/sign_in_page.dart';

import "package:todo_application_ddd/presentation/routes/router.gr.dart" as r;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'Notes',
        debugShowCheckedModeBanner: false,
        builder:
            // ExtendedNavigator(router: Router()),
            ExtendedNavigator.builder<r.Router>(router: r.Router()),
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          accentColor: Colors.blueAccent,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
