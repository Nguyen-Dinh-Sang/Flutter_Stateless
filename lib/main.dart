import 'package:flutter/material.dart';

// cơ bản
// void main() {
//   runApp(
//     // là cha, root của toàn bộ ứng dụng, căn tất cả ở trong ra giữa.
//     Center(
//       child: Text('hello world', textDirection: TextDirection.ltr,),
//     )
//   );
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello world', textDirection: TextDirection.ltr,),
    );
  }
}