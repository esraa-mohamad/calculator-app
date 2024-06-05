import 'package:flutter/material.dart';

import '../resources/style_manager.dart';
import '../resources/values_manager.dart';

class ResultSection extends StatelessWidget {
  const ResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p8,
          vertical: AppPadding.p40
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '5 X 10' ,
            style: StyleManager.getStyleMedium(),
          ),
          const SizedBox(
            height: AppSize.s25,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '50' ,
              style: StyleManager.getStyleMedium(),
            ),
          ),

        ],
      ),
    );
  }
}
