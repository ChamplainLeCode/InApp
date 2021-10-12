import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

/// Component - Pour réduire la quantité du produit à commander
///
class ProductRemoveButton extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
        color: Color(0xff4F2531),
        child: IconButton(
          // Boutton j'aime
          onPressed: () {},
          icon: Icon(
            Icons.remove,
            color: Color(0xffCBA8AA),
            size: 21,
          ),
        ),
      ),
    );
  }
}
