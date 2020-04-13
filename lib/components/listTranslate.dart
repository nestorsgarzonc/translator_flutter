import 'package:flutter/material.dart';
import 'package:translator_flutter/models/translate_model.dart';

class DisplayCard extends StatelessWidget {
  final List<Translate> _items = [
    Translate(
      text: "yellowish",
      translatedText: "jaunâtre",
      isStarred: true,
    ),
    Translate(
      text: "yellowish",
      translatedText: "jaunâtre",
      isStarred: false,
    ),
    Translate(
      text: "yellowish",
      translatedText: "jaunâtre",
      isStarred: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) => _displayCard(index),
      ),
    );
  }

  Widget _displayCard(int index) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 0.5),
      child: Container(
        height: 80,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    _items[index].text,
                    style: TextStyle(fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    _items[index].translatedText,
                    style: TextStyle(fontWeight: FontWeight.w400),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                _items[index].isStarred ? Icons.star : Icons.star_border,
                size: 23,
                color: _items[index].isStarred
                    ? Colors.blue[600]
                    : Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
