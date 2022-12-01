import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 1,
              backgroundImage: NetworkImage(
                  "https://www.biography.com/.image/t_share/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg"),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Tesla Model 3',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Elon Musk',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(flex: 10),
              GestureDetector(
                onTap: (() {}),
                child: Container(
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(14)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Wellet',
                              style: TextStyle(fontSize: 10),
                            ),
                            Icon(
                              Icons.wallet,
                              size: 14,
                            )
                          ],
                        ),
                        const Text(
                          '780.00',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade900),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.alarm),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://media.bizj.us/view/img/10681750/tesla-supercharger-texas-map*1200xx1284-722-0-13.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Enter a search term'),
          ),
        ],
      ),
    );
  }
}
