import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/screens/product/ratingBar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            SizedBox(height: 50),
            _buildProductImage(),
            SizedBox(height: 30),
            _buildProductInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 10,
          decoration: BoxDecoration(color: ColorManager.primary),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Row(
            children: [
              IconButton(
                color: ColorManager.white,
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(width: 10),
              Text(
                "DETAILS",
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProductImage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 200, // error khi dung mediaquery
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/fruit/cherry.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Widget _buildProductInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cherry",
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            'Grapes will provide natural nutrients. The  Chemical in organic grapes which can be healthier hair and skin. It can be improve Your heart health. Protect your body from Cancer.',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 12,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Nutrition",
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 18,
              fontFamily: 'Poppins',
            ),
          ),
          _buildNutritionInfo(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "160 Per/ kg",
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
              _buildBuyButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBulletText("Fiber"),
        // Add more bullet points here if needed
      ],
    );
  }

  Widget _buildBulletText(String text) {
    return Row(
      children: [
        Text(
          "\u2022",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildBuyButton() {
    return Material(
      color: ColorManager.primary,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 40,
          width: 200,
          child: Center(
            child: Text(
              "Buy Now",
              style: TextStyle(
                color: ColorManager.white,
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
