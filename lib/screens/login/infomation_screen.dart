import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class InfomationScreen extends StatelessWidget {
  const InfomationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                const SizedBox(height: 70),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Enter Your Name", textAlign: TextAlign.left),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
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
                ),
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Add Address", textAlign: TextAlign.left),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLines: 5,
                  decoration: const InputDecoration(
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
                ),
                const SizedBox(height: 30),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
