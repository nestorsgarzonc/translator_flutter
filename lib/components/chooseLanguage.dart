import 'package:flutter/material.dart';

class ChooseLanguage extends StatefulWidget {
  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  String _firstLanguage = "English";
  String _secondLanguage = 'French';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey[500],
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Languages(language: _firstLanguage)),
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(
                Icons.compare_arrows,
                color: Colors.grey[700],
              ),
              onPressed: () {},
            ),
          ),
          Expanded(child: Languages(language: _secondLanguage))
        ],
      ),
    );
  }
}

class Languages extends StatelessWidget {
  final String language;

  const Languages({this.language});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(
            language,
            style: TextStyle(color: Colors.blue[600], fontSize: 15),
          ),
        ),
      ),
    );
  }
}
