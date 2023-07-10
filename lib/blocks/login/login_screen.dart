
import 'package:caters/bricks/widgets/app_blur_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                child: Image(
                  image: AssetImage('assets/images/backgrounds/caters_51.png'),
                  alignment: Alignment.center,
                  fit: BoxFit.fitHeight,
                  height: 10000,
                )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage('assets/images/branding/caters_white.png'),
                  alignment: Alignment.center,
                  fit: BoxFit.fitHeight,
                  height: 175,
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