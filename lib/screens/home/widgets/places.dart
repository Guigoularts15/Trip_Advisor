import 'package:flutter/material.dart';
import 'package:trip_advisor/models/post_data.dart';

class Places extends StatelessWidget {
  final photo;
  final place;

  Places(this.photo, this.place);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(photo),
          SizedBox(
            height: 5,
          ),
          Text(
            place,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
