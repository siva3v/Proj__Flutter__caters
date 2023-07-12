import 'package:caters/blocks/web_base/web_screen.dart';
import 'package:caters/bricks/widgets/app_loading_screen.dart';
import 'package:caters/shared/util/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_cubit.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit(),
        child: BlocBuilder<AppCubit, AppStates>(
            builder: (blocContext, state) {
              return MaterialApp(
                title: 'Cators',
                theme: ThemeData(
                    brightness: Brightness.light,
                    primaryColor: AppTheme.primaryColor,
                    primarySwatch: AppTheme().primaryMaterialColor()
                ),
                home: (() {
                  switch(state) {
                    default: return WebScreen();
                  }
                }()),
              );
            }
        )
    );
  }
}


