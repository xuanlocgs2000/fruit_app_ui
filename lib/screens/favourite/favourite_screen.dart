import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/screens/resource/header.dart';
import 'package:fruit_app_ui/screens/product/ratingBar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SafeArea(
          child: Column(
            children: [
              HeaderWidget(
                  context: context,
                  headerHeight: MediaQuery.of(context).size.height / 10),
              SizedBox(height: 10),
              _buildProductList(),
            ],
          ),
        ),
      ),
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
        Text(
          'Pick up from organic farms',
          style: TextStyle(
            color: ColorManager.black,
            fontSize: 10,
            fontFamily: 'Poppins',
          ),
        ),
        RatingBarWidget(
          starColor: ColorManager.orange,
        ),
        _buildQuantityControls(),
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
        Text(
          '160 Per/ kg',
          style: TextStyle(
            color: ColorManager.black,
            fontSize: 14,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }

  Widget _buildQuantityControls() {
    return Row(
      children: [
        IconButton(
          color: ColorManager.black,
          icon: Icon(Icons.remove),
          onPressed: () {},
        ),
        Text(
          '2',
          style: TextStyle(
            color: ColorManager.black,
            fontSize: 15,
            fontFamily: 'Poppins',
          ),
        ),
        IconButton(
          color: ColorManager.black,
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
        SizedBox(width: 100),
        _buildAddButton(),
      ],
    );
  }

  Widget _buildAddButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.orange,
        foregroundColor: Colors.white,
        elevation: 5,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text('Add'),
    );
  }
}
