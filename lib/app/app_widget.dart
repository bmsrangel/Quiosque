import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiosque/app/modules/home/home_page.dart';

import 'core/data/products/i_product_repository.dart';
import 'core/data/products/product_repository.dart';
import 'core/database/db_connection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DbConnection>(
          create: (_) => DbConnection(),
        ),
        Provider<IProductRepository>(
          create: (context) => ProductRepository(context.read()),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
