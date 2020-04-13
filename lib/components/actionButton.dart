import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final IconData icon;
  final AssetImage imageIcon;
  final String text;

  ActionButton({this.icon, this.imageIcon, this.text});

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        onPressed: () {},
        child: Column(
          children: <Widget>[
            _displayIcon(),
            Text(this.widget.text, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget _displayIcon() {
    if (this.widget.icon != null) {
      return Icon(
        this.widget.icon,
        size: 23,
        color: Colors.blue[800],
      );
    } else if (this.widget.imageIcon != null) {
      return ImageIcon(
        this.widget.imageIcon,
        size: 23.0,
        color: Colors.blue[800],
      );
    } else {
      return Container();
    }
  }
}
