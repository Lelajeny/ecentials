import 'package:ecentialsclone/src/Themes/ecentials_icons_icons.dart';
import 'package:flutter/material.dart';

class ambulanceResultsList extends StatelessWidget {
  final String? type;
  final int? discount;
  final int? prize;
  final String? description;
  const ambulanceResultsList(
      {this.type, this.discount, this.prize, this.description, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(12),
        child: SizedBox(
          width: 414.0,
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text(
                type!,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                "$discount% discount",
                style: const TextStyle(fontSize: 14.0),
              ),
              Text(
                "\$ $prize",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.orange),
              ),
            ]),
            SizedBox(height: 10),
            Text(description!),
          ]),
        ),
      ),
    );
  }
}