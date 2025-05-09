import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // 这个 widget 是应用程序的根组件
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // 这是应用程序的主题设置
        //
        // 尝试：运行应用程序 "flutter run"。你会看到
        // 应用程序有一个紫色的工具栏。然后，在不退出应用的情况下，
        // 尝试将下面的 colorScheme 中的 seedColor 改为 Colors.green
        // 然后触发 "热重载"（保存更改或按 Flutter IDE 中的 "热重载" 按钮，
        // 或者如果使用命令行启动应用，按 "r" 键）。
        //
        // 注意计数器没有重置为零；应用程序
        // 状态在重载过程中不会丢失。要重置状态，请使用热
        // 重启。
        //
        // 这也适用于代码，不仅仅是值：大多数代码更改都可以
        // 通过热重载来测试。
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // 这个 widget 是应用程序的主页面。它是一个有状态的 widget，
  // 意味着它有一个 State 对象（在下面定义），其中包含影响
  // 其外观的字段。

  // 这个类是状态的配置。它保存由父组件（在这个例子中是 App widget）
  // 提供的值（在这个例子中是标题），并被 State 的 build 方法使用。
  // Widget 子类中的字段总是被标记为 "final"。

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // 这个 setState 调用告诉 Flutter 框架这个 State 中
      // 有东西发生了变化，这会导致它重新运行下面的 build 方法，
      // 以便显示可以反映更新后的值。如果我们改变
      // _counter 而不调用 setState()，那么 build 方法就不会
      // 被再次调用，因此看起来什么都不会发生。
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 这个方法在每次调用 setState 时都会重新运行，例如上面的
    // _incrementCounter 方法所做的。
    //
    // Flutter 框架已经过优化，使重新运行 build 方法
    // 变得快速，这样你就可以只重建需要更新的部分，而不是
    // 必须单独更改 widget 的实例。
    return Scaffold(
      appBar: AppBar(
        // 尝试：尝试将这里的颜色改为特定颜色（比如
        // Colors.amber），然后触发热重载，看看 AppBar
        // 改变颜色，而其他颜色保持不变。
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // 这里我们从由 App.build 方法创建的 MyHomePage 对象中
        // 获取值，并用它来设置我们的应用栏标题。
        title: Text(widget.title),
      ),
      body: Center(
        // Center 是一个布局 widget。它接收一个子组件并将其
        // 放置在父组件的中间。
        child: Column(
          // Column 也是一个布局 widget。它接收一个子组件列表并
          // 垂直排列它们。默认情况下，它会调整自己的大小以适应
          // 子组件的水平尺寸，并尝试与父组件一样高。
          //
          // Column 有各种属性来控制它如何调整自己的大小和
          // 如何定位其子组件。这里我们使用 mainAxisAlignment 来
          // 垂直居中子组件；这里的主轴是垂直轴，因为
          // Column 是垂直的（交叉轴将是水平的）。
          //
          // 尝试：调用 "debug painting"（在 IDE 中选择 "Toggle Debug Paint"
          // 操作，或在控制台中按 "p"），以查看
          // 每个 widget 的线框。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // 这个尾随逗号使 build 方法的自动格式化更美观。
    );
  }
}
