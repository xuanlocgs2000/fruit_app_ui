import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/login/num_pad.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class VerifyScreen extends StatefulWidget {
  VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enter The 4 digit code that was \nsend to your Mobile Number ",
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: SizedBox(
              height: 70,
              child: Center(
                child: TextField(
                  controller: _myController,
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: const TextStyle(fontSize: 16),
                  keyboardType: TextInputType.none,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 335,
            height: 52,
            child: MaterialButton(
              onPressed: () {},
              color: ColorManager.primary,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text("VERIFY"),
            ),
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 40.0),
              child: Text(
                "Resend Again? ",
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 100),
          NumPad(
            buttonSize: 75,
            buttonColor: const Color(0xFFEFEFEF),
            iconColor: const Color.fromARGB(255, 126, 125, 124),
            controller: _myController,
            delete: () {
              _myController.text = _myController.text
                  .substring(0, _myController.text.length - 1);
            },
            //
            onSubmit: () {
              debugPrint('SDT: ${_myController.text}');
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        content: Text(
                          "SDT: ${_myController.text}",
                          style: const TextStyle(fontSize: 30),
                        ),
                      ));
            },
          ),
        ],
      ),
    );
  }
}
