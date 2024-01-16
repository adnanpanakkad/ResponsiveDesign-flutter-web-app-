import 'package:flutter/material.dart';
import 'package:web_app/dimensions.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  
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
        title: Text('M O B I L E'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 250,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.network(
                            'https://media0.giphy.com/media/5k9BASk41i2NazAfIK/giphy.gif?cid=6c09b952tketp2pmyqxzlnbwvrvx8m7y9hre5wwmvk8gos6x&ep=v1_gifs_search&rid=giphy.gif&ct=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'),
                      )),
                )),
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
