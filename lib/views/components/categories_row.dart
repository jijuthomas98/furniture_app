import 'package:flutter/material.dart';
import 'package:furniture_app/models/categories_model.dart';

import 'category_card.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({
    this.categories,
    Key key,
  }) : super(key: key);
  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}
