import 'package:flutter/material.dart';

import 'main.dart';

class Post extends StatelessWidget {
  String name;
  String price;
  String date;
  String imageUrl;

  Post(this.name, this.price, this.date, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    var textColor = Colors.black87;
    var textSize = 20.0;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondPage(imageUrl: imageUrl),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 200,
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 200,
                height: 200,
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: textColor,
                    fontSize: textSize,
                  ),
                ),
                const Spacer(),
                Text(
                  price,
                  style: TextStyle(
                    color: textColor,
                    fontSize: textSize,
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: textColor,
                    fontSize: textSize,
                  ),
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
