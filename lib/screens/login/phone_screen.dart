import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/login/loading_screen.dart';
import 'package:fruit_app_ui/screens/login/num_pad.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({Key? key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPhoneField(),
          _buildVerifyButton(context),
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
            onSubmit: () {
              _showPhoneNumberDialog();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneField() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: SizedBox(
        height: 70,
        child: Center(
          child: IntlPhoneField(
            controller: _myController,
            keyboardType: TextInputType.none,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'VN',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildVerifyButton(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 52,
      child: MaterialButton(
        onPressed: () {
          _navigateToLoadingScreen(context);
        },
        color: ColorManager.primary,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text("VERIFY"),
      ),
    );
  }

  void _navigateToLoadingScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoadingScreen(),
      ),
    );
  }

  void _showPhoneNumberDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: Text(
          "SDT: ${_myController.text}",
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
