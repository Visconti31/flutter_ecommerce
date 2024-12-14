import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/theme/theme.dart';

// * This class is used to setup Themes, initial Bindings, any animation, and ...
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
