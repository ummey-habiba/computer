
import 'package:flutter/material.dart';

import '../constant.dart';
import 'color_dots.dart';

class pick_color extends StatelessWidget {
  const pick_color({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          colorDot(
            color: Colors.black,
            isSelected: true,
          ),
          colorDot(
            color: Colors.grey,
            isSelected: false,
          ),
          colorDot(
            color: Colors.purple,
            isSelected: false,
          ),
        ],
      ),
    );
  }
}