import 'package:flutter/material.dart';
import 'package:translator_flutter/components/actionButton.dart';

class TranslateText extends StatefulWidget {
  @override
  _TranslateTextState createState() => _TranslateTextState();
}

class _TranslateTextState extends State<TranslateText> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(0.0),
      elevation: 2,
      child: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Text(
                    'Enter text',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ActionButton(icon: Icons.camera_alt, text: 'Camera'),
                ActionButton(icon: Icons.drag_handle, text: 'HandWriting'),
                ActionButton(icon: Icons.phone_in_talk, text: 'Conversation'),
                ActionButton(icon: Icons.keyboard_voice, text: 'Voice'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
