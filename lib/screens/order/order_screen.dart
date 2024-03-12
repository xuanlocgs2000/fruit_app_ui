import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/screens/product/ratingBar.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 10),
              _buildProductList(),
            ],
          ),
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
                "My order",
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

  Widget _buildProductList() {
    return
        // padding: EdgeInsets.only(left: 10),
        ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) => _buildProductItem(),
      separatorBuilder: (_, __) => Container(
        height: 1,
        decoration: BoxDecoration(color: Color.fromARGB(255, 219, 212, 212)),
      ),
      itemCount: 4,
    );
  }

  Widget _buildProductItem() {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildProductImage(),
          SizedBox(width: 10),
          _buildProductDetails(),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/fruit/cherry.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Widget _buildProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProductNameAndPrice(),
        RatingBarWidget(),
        Text(
          'Rate this Product ',
          style: TextStyle(
            color: ColorManager.grey1,
            fontSize: 10,
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          'Delivered on 24 Feb 2021.',
          style: TextStyle(
            color: ColorManager.black,
            fontSize: 12,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }

  Widget _buildProductNameAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Grapes\t\t',
          style: TextStyle(
            color: ColorManager.black,
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
        ),
        //
        Spacer(), // error spacer
        // _buildNextButton(),
        Icon(Icons.arrow_forward_ios, size: 12),
      ],
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0.5,
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Icon(Icons.arrow_forward_ios, size: 12),
    );
  }
}
