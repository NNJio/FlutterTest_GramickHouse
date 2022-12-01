import 'package:flutter/material.dart';

import '../methods/soon_dialog.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25,
      right: 20,
      child: GestureDetector(
        onTap: () => SoonDialog(context),
        child: Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.green.shade200,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.network(
                  'https://cdn-icons-png.flaticon.com/128/7854/7854748.png'),
            )),
      ),
    );
  }
}