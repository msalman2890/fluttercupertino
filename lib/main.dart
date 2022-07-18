import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(primaryColor: CupertinoColors.link),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.extraLightBackgroundGray,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.link,
        middle: Text(widget.title,style: TextStyle(
          color: CupertinoColors.white
        ),),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            SizedBox(
              height: 15,
            ),
            CupertinoButton.filled(
                child: Icon(CupertinoIcons.add), onPressed: _incrementCounter),
            SizedBox(
              height: 15,
            ),
            CupertinoActivityIndicator(
              radius: 30,
            ),
            SizedBox(
              height: 15,
            ),
            CupertinoActivityIndicator.partiallyRevealed(
              radius: 30,
            ),
            SizedBox(
              height: 15,
            ),
            CupertinoTextField(
              placeholder: "Any Text",
            ),
            SizedBox(
              height: 15,
            ),
            CupertinoSearchTextField(
              suffixMode: OverlayVisibilityMode.editing,
            ),
            SizedBox(
              height: 15,
            ),
            CupertinoButton(child: Text("Alert Dialog"), onPressed: (){
              showCupertinoDialog(context: context, builder: (context){
                return CupertinoAlertDialog(
                  title: Text("Have you subscribe my channel?"),
                  content: Text("Subscribe it. Hurry up"),
                  actions: [
                    CupertinoDialogAction(child: Text("Yes"),onPressed: (){
                      Navigator.pop(context);
                    },),
                    CupertinoDialogAction(child: Text("No"),),
                  ],
                );
              });
            }),
            SizedBox(
              height: 15,
            ),
            CupertinoContextMenu(
              child: Image.network("https://images.ctfassets.net/hrltx12pl8hq/a2hkMAaruSQ8haQZ4rBL9/8ff4a6f289b9ca3f4e6474f29793a74a/nature-image-for-website.jpg?fit=fill&w=120&h=100"),
              actions: [
                CupertinoContextMenuAction(child: Text("Hello"),),
                CupertinoContextMenuAction(child: Text("Hi")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
