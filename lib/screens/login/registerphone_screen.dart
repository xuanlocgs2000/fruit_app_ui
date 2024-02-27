import 'package:flutter/material.dart';

class RegisterPhoneScreen extends StatelessWidget {
  const RegisterPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/onboarding/obimg4.png"),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter Your Phone Number",
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 60, 60, 60),
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text("OR"),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 45,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/icons/google.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 8),
                            Text("Log In With"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 160,
                      height: 45,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: const BorderSide(color: Colors.black),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/icons/facebook.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 8),
                            Text("Log In With"),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
