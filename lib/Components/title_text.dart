import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key key,
    @required this.defaultSize,
    this.title,
  }) : super(key: key);

  final double defaultSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 1.8,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
