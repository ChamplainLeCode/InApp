import 'package:flutter/material.dart';
import 'package:karee/karee.dart';

/// Component - Pour mettre le produits dans ses favoris
///
class FavouriteButton extends StatefulComponent {
  FavouriteButton({Key? key}) : super(key: key);

  @override
  FavouriteButtonState createState() => FavouriteButtonState();
}

class FavouriteButtonState extends ComponentState<FavouriteButton> {
  @override
  Widget builder(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 15, 14),
        color: Color(0xff4F2531),
        child: IconButton(
          // Boutton j'aime
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: Color(0xffE13C47),
            size: 40,
          ),
        ),
      ),
    );
  }
}
