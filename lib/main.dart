import 'package:flutter/cupertino.dart';
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

// nâng cấp 1 xíu
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('hello world', textDirection: TextDirection.ltr,),
//     );
//   }
// }

class MyAppBar extends StatelessWidget {
  MyAppBar(this.title) {
  }

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //các thuộc tính khác
      decoration: BoxDecoration(color: Colors.blue),
      //widget bên trong theo chiều ngang.
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            //rê chuột vào nó lên
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          //lấp đầy khoảng trống còn lại
          Expanded(
              child: title,
          ),
          IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null)
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //trải view theo chiều dọc
      child: Column(
        children: <Widget>[
          MyAppBar(
            Text(
              'Title',
              style: Theme.of(context).primaryTextTheme.title,
            )
          ),
          Expanded(
              child: Center(
                child: Text("Hello"),
              ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: MyScaffold(),
  ));
}