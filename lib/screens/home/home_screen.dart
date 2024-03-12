import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:fruit_app_ui/screens/home/products_section.dart';
import 'package:fruit_app_ui/screens/product/ratingBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> categories = ['Vegetables', 'Fruits', 'Dairy'];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            _buildHeaderBackground(),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  _buildSearchBar(),
                  SizedBox(height: 10),
                  _buildCategories(),
                  SizedBox(height: 10),
                  ProductsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderBackground() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(color: ColorManager.primary),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fruit Market',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 18,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 6,
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          alignLabelWithHint: true,
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: ColorManager.black.withOpacity(0.3),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: ColorManager.black.withOpacity(0.3),
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 45,
        child: ListView(
          scrollDirection: Axis.horizontal,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: categories
              .asMap()
              .entries
              .map((MapEntry<int, String> map) => _getCategory(map.key))
              .toList(),
        ),
      ),
    );
  }

  Widget _getCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            width: MediaQuery.of(context).size.width / 3.5,
            // width: ,
            height: 30,
            decoration: BoxDecoration(
              color: selectedIndex == index
                  ? ColorManager.orange
                  : ColorManager.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                categories[index],
                style: TextStyle(
                  color:
                      selectedIndex == index ? ColorManager.white : Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
