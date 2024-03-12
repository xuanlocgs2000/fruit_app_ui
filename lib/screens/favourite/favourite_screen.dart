import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
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
                "Favourite",
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
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (_, index) => _buildProductItem(),
        separatorBuilder: (_, __) => SizedBox(height: 20),
        itemCount: 4,
      ),
    );
  }

  Widget _buildProductItem() {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/fruit/cherry.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                SizedBox(height: 10),
                Text(
                  '160 Per/ kg',
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            Text(
              'Pick up from organic farms',
              style: TextStyle(
                color: ColorManager.black,
                fontSize: 10,
                fontFamily: 'Poppins',
              ),
            ),
            RatingBarWidget(),
            Row(
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
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add'),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
