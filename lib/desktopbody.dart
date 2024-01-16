import 'package:flutter/material.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Hjd63rV6-JAUzWmRX7NU3wP0KnNKJPvNMw&usqp=CAU',
    'https://images.unsplash.com/photo-1557626204-59dd03fd2d31?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTZ8fHxlbnwwfHx8fHw%3D',
    'https://images.unsplash.com/photo-1556379092-dca659792591?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8fA%3D%3D',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('D E S K T O P'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: 250,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.network(
                        'https://qph.cf2.quoracdn.net/main-qimg-765e982080ef0d7bb71c0e16e3f06f95'),
                  )),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.network(imageUrls[index]),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
