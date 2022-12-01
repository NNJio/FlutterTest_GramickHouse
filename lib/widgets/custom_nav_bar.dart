import 'package:flutter/material.dart';

import '../methods/soon_dialog.dart';

class CustomNevBar extends StatelessWidget {
  const CustomNevBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 28,
      bottom: 40,
      child: Container(
        width: 340,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //! Stations
            GestureDetector(
              onTap: () => SoonDialog(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Spacer(flex: 2),
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/128/1865/1865083.png',
                    color: Colors.white,
                    scale: 5,
                  ),
                  const Spacer(),
                  const Text(
                    'Stations',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
            //! Scan
            GestureDetector(
              onTap: () => SoonDialog(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Spacer(flex: 2),
                  Container(
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/7463/7463734.png',
                      color: Colors.white,
                      scale: 5,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Scan',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
            //! Profile
            GestureDetector(
              onTap: () => SoonDialog(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Spacer(flex: 2),
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/128/266/266033.png',
                    color: Colors.white,
                    scale: 5,
                  ),
                  const Spacer(),
                  const Text(
                    'Profile',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
