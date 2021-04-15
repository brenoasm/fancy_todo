import 'package:flutter/material.dart';

import 'package:fancy_todo/ui/routes.dart';

import 'package:fancy_todo/main/factories/factories.dart';

class AppPage extends StatelessWidget {
  final Map<String, Widget Function(BuildContext context)> _routes = {
    Routes.dashboard: (BuildContext context) => makeDashboardPage(),
    Routes.todo: (BuildContext context) => makeToDoPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fancy To Do',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo,
        primarySwatch: Colors.indigo,
        accentColor: Colors.pink.shade300,
        scaffoldBackgroundColor: Colors.grey.shade50,
        iconTheme: IconThemeData(
          color: Colors.grey.shade600,
        ),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.grey.shade600,
          ),
        ),
      ),
      initialRoute: Routes.dashboard,
      onGenerateRoute: (settings) {
        final route = _routes[settings.name];

        if (route == null) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: Center(
                child: Text('404'),
              ),
            ),
          );
        }

        // return PageRouteBuilder(
        //   pageBuilder: (context, animation, secondaryAnimation) {
        //     return route(context);
        //   },
        // );

        return MaterialPageRoute(
          builder: route,
        );
      },
    );
  }
}
