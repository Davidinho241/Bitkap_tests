import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos/src/blocs/theme.bloc.dart';
import 'package:todos/src/screens/HomeUI.dart';
import 'package:sizer/sizer.dart';
import 'package:todos/src/utils/themes.dart';

void main() => runApp(MultiBlocProvider(providers: [
  BlocProvider<ThemeBloc>(
    create: (BuildContext context) => ThemeBloc()..add(ThemeLoadStarted()),
  ),
], child: App()));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return Sizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp(
              supportedLocales: [
                Locale('en', 'US'),
              ],
              title: 'Bitkap Todo List',
              themeMode: themeState.themeMode,
              theme: buildThemeLight(context),
              home: HomeUI(),
              debugShowCheckedModeBanner : false,
            );
          },
        );
      },
    );
  }
}