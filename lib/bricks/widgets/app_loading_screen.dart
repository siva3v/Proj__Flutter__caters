
import 'package:caters/bricks/widgets/app_blur_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLoadingScreen extends StatelessWidget {
  const AppLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
        body: Stack(
          children: [
            const AppBlur(
                level: 7.5,
                child: Image(
                  image: AssetImage('assets/images/backgrounds/caters_51.png'),
                  height: double.infinity,
                  fit: BoxFit.cover,
                )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 50,),
                Image(
                  image: AssetImage('assets/images/branding/caters_white.png'),
                  alignment: Alignment.center,
                  fit: BoxFit.fitHeight,
                  height: 185,
                ),
                SizedBox(height: 50,),
                Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 3.0,
                  ),
                ),
              ],
            )
          ],
        )
    );
  }

}