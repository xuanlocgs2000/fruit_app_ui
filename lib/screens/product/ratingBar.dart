import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarWidget extends StatelessWidget {
  final Color starColor; // Thêm thuộc tính màu sắc

  const RatingBarWidget({Key? key, required this.starColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildRatingBar();
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
        color: starColor, // Sử dụng màu sắc được truyền vào
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
