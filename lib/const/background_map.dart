
import 'package:flutter/material.dart';

class MapBackground extends StatelessWidget {
  const MapBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://media.bizj.us/view/img/10681750/tesla-supercharger-texas-map*1200xx1284-722-0-13.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
