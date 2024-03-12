import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/resource/color_manager.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            // SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) => Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                // padding: EdgeInsets.symmetric(horizontal: 30),
                                // margin: EdgeInsets.symmetric(horizontal: 20),
                                width: 60,
                                height: 60, // error khi dung mediaquery
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/fruit/cherry.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Grapes\t\t',
                                        style: TextStyle(
                                          color: ColorManager.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
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
                                  ),
                                  Text(
                                    'Pick up from organic farms',
                                    style: TextStyle(
                                      color: ColorManager.black,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  _buildRatingBar(),
                                  Row(
                                    children: [
                                      IconButton(
                                          color: ColorManager.black,
                                          icon: Icon(Icons.remove),
                                          onPressed: () {}),
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
                                      SizedBox(
                                        width: 100,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Add'),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                  separatorBuilder: (_, __) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: 4),
            ),
          ],
        ),
      ),
    );
  }
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

Widget _buildRatingBar() {
  return RatingBar.builder(
    initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemSize: 12,
    itemPadding: EdgeInsets.symmetric(horizontal: 0),
    itemBuilder: (context, _) => Icon(
      Icons.star,
      color: Colors.amber,
    ),
    onRatingUpdate: (rating) {
      print(rating);
    },
  );
}
