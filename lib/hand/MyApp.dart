import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Swipe Options';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            final item = 'Item ${index + 1}';
            return SwipeOptionWidget(item: item);
          },
        ),
      ),
    );
  }
}

class SwipeOptionWidget extends StatefulWidget {
  final String item;

  const SwipeOptionWidget({Key? key, required this.item}) : super(key: key);

  @override
  _SwipeOptionWidgetState createState() => _SwipeOptionWidgetState();
}

class _SwipeOptionWidgetState extends State<SwipeOptionWidget> {
  bool _showOptions = false;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.item),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) async {
        setState(() {
          _showOptions = !_showOptions;
        });
        return false; // 返回 false 防止 Dismissible 自动删除
      },
      onDismissed: (direction) {
        setState(() {
          _showOptions = false;
        });
      },
      background: Container(
        color: Colors.green,
        alignment: Alignment.centerRight,
        child: Icon(Icons.check, color: Colors.white),
      ),
      child: ListTile(
        title: Text(widget.item),
      ),
      secondaryBackground: Container(
        color: Colors.red,
        alignment: Alignment.centerLeft,
        child: Icon(Icons.delete, color: Colors.white),
      ),
    );
  }
}
