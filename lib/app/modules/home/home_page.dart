import 'package:flutter/material.dart';
import 'package:quiosque/app/modules/home/widgets/table_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  final String title = 'Mesas';
  int s = 2;

  static const int _totalMesas = 50;

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: scaffoldMessengerKey,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: _totalMesas,
          padding: const EdgeInsets.all(20.0),
          itemBuilder: (context, index) => TableWidget(
            tableNumber: index + 1,
            onTableSelected: () {
              final snack = SnackBar(
                content: Text('Clicou Mesa ${index + 1}'),
                duration: Duration(seconds: s),
              );
              // ignore: unused_local_variable
              var showSnackBar =
                  scaffoldMessengerKey.currentState?.showSnackBar(snack);
            },
          ),
        ),
      ),
    );
  }
}
