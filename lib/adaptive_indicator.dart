import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdaptivIndicator extends StatelessWidget {
  String os;
  AdaptivIndicator({
    Key? key,
    required this.os,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (this.os == "android") {
      return CircularProgressIndicator();
    }
    return CupertinoActivityIndicator();
  }
}
