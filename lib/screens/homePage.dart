import 'package:flutter/material.dart';
import 'package:translator_flutter/components/chooseLanguage.dart';
import 'package:translator_flutter/components/listTranslate.dart';
import 'package:translator_flutter/components/translateText.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NW Translator 🌏'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          ChooseLanguage(),
          TranslateText(),
          DisplayCard(),
        ],
      ),
    );
  }
}
