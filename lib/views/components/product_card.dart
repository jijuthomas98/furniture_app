import 'package:flutter/material.dart';
import 'package:furniture_app/models/products_model.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    this.product,
    this.press,
    Key key,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      child: Container(
        width: defaultSize * 15,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.6,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/spinner.gif', image: product.image),
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(product.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15))),
              Text('₹ ${product.price.toString()}')
            ],
          ),
        ),
      ),
    );
  }
}
