
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/backgrounds/caters_6.png'),
              fit: BoxFit.cover,
            ),
          ),
        child: Stack(
          children: [
            Center(
              heightFactor: 2.5,
              child: Image(
                image: AssetImage('assets/images/branding/caters_white.png'),
                height: 150,
              ),
            ),
            Column(
              children:[
                Spacer(),
                Align(alignment: Alignment.centerRight),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Please enter your 10 digit phone number", style: TextStyle(color: Colors.black54)),
                          const SizedBox(height: 10),
                          TextField(
                              focusNode: FocusNode(),
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                counterText: "",
                              ),
                              maxLength: 10,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                letterSpacing: 2.5,
                                fontSize: 24,
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[ FilteringTextInputFormatter.digitsOnly ]
                          ),
                          const SizedBox(height: 15.0),
                          SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: ()=>{},
                              child: Text("Get OTP"),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text("Please enter your 10 digit phone number", style: TextStyle(color: Colors.black54)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }

}