import 'package:flutter/material.dart';

import '../const/background_map.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/filter.dart';
import '../widgets/search.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppbar(),
      ),
      body: Stack(
        children: [
          const MapBackground(),
          const SearchWidget(),
          const FilterWidget(),
          Positioned(
            bottom: 29,
            left: 155,
            child: Container(
              // transform: Matrix4.rotationZ(5),
              width: 85,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black,
              ),
            ),
          ),
          const CustomNevBar(),
          
        ],
      ),
    );
  }
}

