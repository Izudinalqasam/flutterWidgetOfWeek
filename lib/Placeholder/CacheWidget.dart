import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheWidget extends StatefulWidget {
  @override
  _CacheWidgetState createState() => _CacheWidgetState();
}

class _CacheWidgetState extends State<CacheWidget> {
  bool imgLoaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlaceHolder Widget"),
      ),
      body: Align(
        child: CachedNetworkImage(
          placeholder: (context, text) => CircularProgressIndicator(),
          imageUrl: "https://i.pinimg.com/originals/57/6c/d2/576cd2ef81dd6b7b24fa784badad3f1b.jpg",
        ),
      ),
    );
  }
}
