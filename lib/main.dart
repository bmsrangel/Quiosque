import 'package:flutter/material.dart';

void main() {
  var builder = Builder(builder: (context) {
    return MyApp();
  });
  runApp(Center(child: builder));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    const title = 'Mesas';
    int n = 0;
    int s = 2;
    return MaterialApp(
      title: title,
      home: ScaffoldMessenger(
        key: scaffoldMessengerKey,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(title),
          ),
          body: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            padding: const EdgeInsets.all(20),

            // Generate 100 widgets that display their index in the List.
            children: List.generate(50, (index) {
              n = index + 1;
              return GestureDetector(
                onTap: () {
                  final snack = SnackBar(
                      content: Text('Clicou Mesa ${++index}'),
                      duration: Duration(seconds: s));
                  // ignore: unused_local_variable
                  var showSnackBar =
                      scaffoldMessengerKey.currentState?.showSnackBar(snack);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(width: 3.0),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                    child: Text('$n', style: const TextStyle(fontSize: 30.0)),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
