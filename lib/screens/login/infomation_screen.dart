import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/home/home_screen.dart';
import 'package:fruit_app_ui/screens/home/navigation_screen.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

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
                  controller: nameController,
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
                  controller: addressController,
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
                    onPressed: () {
                      if (nameController.text.isNotEmpty &&
                          addressController.text.isNotEmpty) {
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
                    },
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
