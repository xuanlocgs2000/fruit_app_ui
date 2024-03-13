import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/home/navigation_screen.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key});

  @override
  _InformationScreenState createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          _buildForm(),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          SizedBox(height: 70),
          _buildInputLabel("Enter Your Name"),
          SizedBox(height: 10),
          _buildNameTextField(),
          SizedBox(height: 30),
          _buildInputLabel("Add Address"),
          SizedBox(height: 10),
          _buildAddressTextField(),
          SizedBox(height: 30),
          _buildVerifyButton(),
        ],
      ),
    );
  }

  Widget _buildInputLabel(String labelText) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        labelText,
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildNameTextField() {
    return TextFormField(
      controller: nameController,
      decoration: InputDecoration(
        labelText: "Name",
        labelStyle: TextStyle(
          color: Color.fromARGB(255, 60, 60, 60),
          fontSize: 12.0,
          fontFamily: 'Poppins',
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }

  Widget _buildAddressTextField() {
    return TextFormField(
      controller: addressController,
      maxLines: 5,
      decoration: InputDecoration(
        labelText: "Address",
        labelStyle: TextStyle(
          color: Color.fromARGB(255, 60, 60, 60),
          fontSize: 12.0,
          fontFamily: 'Poppins',
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }

  Widget _buildVerifyButton() {
    return SizedBox(
      width: 335,
      height: 52,
      child: MaterialButton(
        onPressed: _onVerifyPressed,
        color: ColorManager.primary,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text("VERIFY"),
      ),
    );
  }

  void _onVerifyPressed() {
    if (nameController.text.isNotEmpty && addressController.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NavigationScreen(),
        ),
      );
    } else {
      // check text box
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Missing Information"),
          content: Text("Please fill text"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }
}
