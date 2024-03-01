import 'package:flutter/material.dart';

class FBLogin extends StatelessWidget {
  FBLogin({Key? key}) : super(key: key);

  final List<Color> colors=[Colors.red,Colors.orange,Colors.yellow,Colors.greenAccent,Colors.teal,Colors.blue,Colors.red,Colors.orange,Colors.yellow,Colors.greenAccent,Colors.teal,Colors.blue];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(shrinkWrap:true ,itemCount: colors.length,itemBuilder: (context,index){return Container(height:100,
      color:colors[index],);});
  }
}
