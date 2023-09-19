import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Color(Colors.blueAccent) ,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SimpleForm(),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.save),
      ),
    );
  }
}

class SimpleForm extends StatefulWidget {
  const SimpleForm({
    super.key,
  });

  @override
  State<SimpleForm> createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final _namaLengkapController = TextEditingController();
  final _tglLahirController = TextEditingController();

  void onValueChange() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _namaLengkapController.addListener((onValueChange));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _namaLengkapController,
          decoration: InputDecoration(
            labelText: 'Nama Lengkap',
            counterText: '${_namaLengkapController.text.length}',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            //prefixIcon: Icon(Icons.person_2),
            //suffixIcon: Icon(Icons.verified)
            // hintText: 'Masukan nama lengkap Anda',
            //helperText: 'Text',
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _tglLahirController,
          decoration: InputDecoration(
              labelText: 'Tanggal Lahir',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1970),
              lastDate: DateTime(2100),
            );
            if (date != null) {
              _tglLahirController.text =
                  DateFormat('dd MMMM yyyy').format(date);
            }
          },
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Cari Gambar'),
        ),
        const SizedBox(
          height: 16,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Cari Data'),
        ),
        const SizedBox(
          height: 16,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        )
      ],
    );
  }
}
