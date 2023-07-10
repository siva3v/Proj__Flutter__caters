
import 'package:caters/shared/util/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'app_base.dart';
import 'app_cubit.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final authModel = GetIt.instance<AppBase>().authModel;
    final initialState = (authModel.pin.length==4) ? AppStates.pin : AppStates.credentials;
    return BlocProvider(
        create: (context) => AppCubit(initialState),
        child: BlocBuilder<AppCubit, AppState>(
            buildWhen: (prev, current) => prev.appState != current.appState,
            builder: (blocContext, state) {
              final appCubit = blocContext.read<AppCubit>();
              return MaterialApp(
                title: 'Aqua Orbit',
                theme: ThemeData(
                    brightness: Brightness.light,
                    primaryColor: AppTheme.primaryColor,
                    primarySwatch: AppTheme().primaryMaterialColor()
                ),
                home: (() {
                  switch(state.appState) {

                    default: return Container();
                  }
                }()),
              );
            }
        )
    );
  }
}

