import 'package:flutter/material.dart';

class DetailProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;
  const DetailProduk({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Produk',
              style: TextStyle(
                color: Colors.white,
              )),
          backgroundColor: Colors.blue[900],
          leading: IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Kode Produk'),
                  Text(kodeProduk ?? '')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Nama Produk'),
                  Text(namaProduk ?? '')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[const Text('Harga'), Text(harga.toString())],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
