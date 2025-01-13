import 'package:flutter/material.dart';

class FormProduk extends StatefulWidget {
  const FormProduk({super.key});

  @override
  State<FormProduk> createState() => _FormProdukState();
}

class _FormProdukState extends State<FormProduk> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _kodeProduk = TextEditingController();
    TextEditingController _namaProduk = TextEditingController();
    TextEditingController _harga = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Form Produk',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[900],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              TextFieldProduk(
                controller: _kodeProduk,
                label: 'Kode Produk',
                type: 'text',
              ),
              TextFieldProduk(
                controller: _namaProduk,
                label: 'Nama Produk',
                type: 'text',
              ),
              TextFieldProduk(
                controller: _harga,
                label: 'Harga Produk',
                type: 'number',
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () {},
                  child: const Text(
                    'Simpan',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldProduk extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? type;
  const TextFieldProduk({super.key, this.controller, this.label, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        keyboardType:
            type == 'number' ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
            labelText: label,
            hintText: 'Masukan $label ...',
            floatingLabelStyle: WidgetStateTextStyle.resolveWith((state) {
              if (state.contains(WidgetState.focused)) {
                return const TextStyle(color: Colors.blue);
              } else {
                return const TextStyle(color: Colors.black87);
              }
            }),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black54),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
