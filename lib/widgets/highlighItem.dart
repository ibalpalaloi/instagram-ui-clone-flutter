import 'package:flutter/material.dart';

class highlightItem extends StatelessWidget {
  highlightItem(this.title, this.img_url);

  final String title;
  final String img_url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300],
                ),
              ),
              Container(
                width: 74,
                height: 74,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(img_url),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red[300],
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(title),
        ],
      ),
    );
  }
}
