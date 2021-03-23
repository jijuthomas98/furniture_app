import 'package:flutter/material.dart';
import 'package:furniture_app/Components/title_text.dart';
import 'package:furniture_app/controllers/getCategories.dart';
import 'package:furniture_app/models/products_model.dart';
import 'package:furniture_app/size_config.dart';
import 'package:furniture_app/views/components/product_card.dart';

import 'categories_row.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TitleText(
              defaultSize: defaultSize,
              title: 'Browse Categories',
            ),
          ),
          FutureBuilder(
            future: getCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? CategoriesRow(
                    categories: snapshot.data,
                  )
                : Center(
                    child: Image.asset('assets/ripple.gif'),
                  ),
          ),
          Divider(height: 5),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TitleText(
              defaultSize: defaultSize,
              title: 'Recommended for you ',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ProductCard(
              product: product,
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
