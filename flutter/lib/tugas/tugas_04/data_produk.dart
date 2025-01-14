import 'package:flutter/material.dart';
import 'package:pemrograman_bergerak_tgs/tugas/tugas_04/detail_produk.dart';
import 'package:pemrograman_bergerak_tgs/tugas/tugas_04/form_produk.dart';

class DataProduk extends StatelessWidget {
  const DataProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Data Produk',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue[900],
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FormProduk()));
                },
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              ItemProduk(
                kodeProduk: 'A002',
                namaProduk: 'Samsung Galaxy',
                harga: 4000000,
              ),
              ItemProduk(
                kodeProduk: 'B7665',
                namaProduk: 'Polytron',
                harga: 2500000,
              ),
              ItemProduk(
                kodeProduk: 'C089',
                namaProduk: 'Xiaomi Redmi',
                harga: 3000000,
              ),
            ],
          ),
        );
      }),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;
  const ItemProduk({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailProduk(
                      kodeProduk: kodeProduk,
                      namaProduk: namaProduk,
                      harga: harga,
                    )));
      },
      child: Card(
        elevation: 3,
        child: ListTile(
          title: Text(namaProduk ?? ''),
          subtitle: Text('Harga: $harga'),
        ),
      ),
    );
  }
}
