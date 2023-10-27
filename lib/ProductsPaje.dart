import 'package:flutter/material.dart';

class ProductsPaje extends StatefulWidget {
  const ProductsPaje({super.key});

  @override
  State<ProductsPaje> createState() => _ProductsPajeState();
}

class _ProductsPajeState extends State<ProductsPaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            onTap: () {
              print('Clicked ${index + 1}');
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDatls(productIndex: '${index + 1}',)));
            },
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: const Text('Bappy Guria'),
            subtitle: const Text('App Devloper'),
            trailing: const Icon(Icons.arrow_forward),
          ),
        ),
      ),
    );
  }
}

class ProductDatls extends StatelessWidget {
  final String productIndex;

  const ProductDatls({super.key, required this.productIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(productIndex,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          ],
        ),
      ),
    );
  }
}

