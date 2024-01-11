import 'package:flutter/material.dart';
import 'models/transaction.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Teste 1',
      value: 310.76,
      date: DateTime.now()
    ),
    Transaction(
      id: '2',
      title: 'Teste 2',
      value: 211.30,
      date: DateTime.now()
    ),
  ];

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          const Card(
            child: Text('Lista de Transações'),
          )
        ],
      ),
    );
  }
}
