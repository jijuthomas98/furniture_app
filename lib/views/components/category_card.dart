import 'package:flutter/material.dart';
import 'package:furniture_app/Components/title_text.dart';
import 'package:furniture_app/models/categories_model.dart';

import '../../constants.dart';
import '../../size_config.dart';
import '../../Components/custom_clip_shape.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: defaultSize * 20.5,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipPath(
                clipper: CustomClipShape(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    color: kSecondaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TitleText(title: category.title, defaultSize: 8),
                          SizedBox(height: defaultSize),
                          Text(
                            '${category.numOfProducts}+ Products',
                            style:
                                TextStyle(color: kTextColor.withOpacity(0.7)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.5,
                  child: FadeInImage.assetNetwork(
                      placeholder: 'assets/spinner.gif', image: category.image),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
