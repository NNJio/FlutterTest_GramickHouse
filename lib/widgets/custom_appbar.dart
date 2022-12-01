import 'package:flutter/material.dart';

import '../methods/soon_dialog.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.indigoAccent.shade700,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      leading: const Padding(
        padding: EdgeInsets.fromLTRB(10, 7, 0, 7),
        child: CircleAvatar(
          minRadius: 10,
          maxRadius: 10,
          backgroundImage: NetworkImage(
              "https://www.biography.com/.image/t_share/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg"),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tesla Model 3',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Elon Musk',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(flex: 200),
          GestureDetector(
            onTap: () => SoonDialog(context),
            child: Container(
              width: 110,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(14),
                
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wellet',
                          style: TextStyle(
                              fontSize: 9, color: Colors.grey.shade500),
                        ),
                        const Icon(
                          Icons.wallet,
                          size: 14,
                        ),
                      ],
                    ),
                    const Text(
                      '780.00',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Spacer(flex: 30),
          GestureDetector(
            onTap: ()=> SoonDialog(context),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade900),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/3119/3119338.png',
                color: Colors.white,
                scale: 6,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
