import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_app_ui/screens/product/productDetail_screen.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/screens/product/ratingBar.dart';

class ProductsSection extends StatefulWidget {
  const ProductsSection({super.key});

  @override
  State<ProductsSection> createState() => _ProductsSectionState();
}

class _ProductsSectionState extends State<ProductsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          _buildTitleRow(),
          SizedBox(height: 10),
          _buildSubtitleRow(),
          SizedBox(height: 10),
          _buildProductList(),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      children: [
        Text(
          'Organic Fruits\t\t\t',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        Text(
          '(20% Off)',
          style: TextStyle(
            color: ColorManager.primary,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildSubtitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Pick up from organic farms',
          style: TextStyle(
            color: ColorManager.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildProductList() {
    return Container(
      height: 350,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return _buildProductItem();
        },
      ),
    );
  }

  Widget _buildProductItem() {
    return Column(
      children: [
        Container(
          width: 115,
          height: 230,
          margin: EdgeInsets.only(top: 10, right: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProductImage(),
              SizedBox(height: 10),
              _buildProductDetails(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProductImage() {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => ProductDetails(),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: Image.asset(
              "assets/images/fruit/cherry.jpg",
              height: 135,
              width: 115,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.all(8),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 4,
                )
              ],
            ),
            child: Center(
              child: Icon(
                Icons.favorite_outlined,
                color: Colors.red,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProductDetails() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RatingBarWidget(
            starColor: ColorManager.orange,
          ),
          SizedBox(height: 10),
          Text(
            'Cherry',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
            ),
          ),
          Text(
            ' 120 \$ /kg',
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Poppins',
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
