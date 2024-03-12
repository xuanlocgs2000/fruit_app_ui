import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBar extends StatefulWidget {
  const RatingBar({super.key});

  @override
  State<RatingBar> createState() => _RatingBarState();
}

// class _RatingBarState extends State<RatingBar> {  
//     Widget _buildRatingBar() {
//       return RatingBar.builder(
//         initialRating: 3,
//         minRating: 1,
//         direction: Axis.horizontal,
//         allowHalfRating: true,
//         itemCount: 5,
//         itemSize: 12,
//         itemPadding: EdgeInsets.symmetric(horizontal: 0),
//         itemBuilder: (context, _) => Icon(
//           Icons.star,
//           color: Colors.amber,
//         ),
//         onRatingUpdate: (rating) {
//           print(rating);
//         },
//       );
//     }
//   }
// }
