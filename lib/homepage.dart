import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final _textController = TextEditingController();

  String userPost = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                  child: Center(
                    child: Text(userPost),
                  ),
                  )
              ),
            TextField(
            controller: _textController,
            decoration:  InputDecoration(
              hintText: 'Cos poyebanego dawaj',
              border: const OutlineInputBorder(),
              suffixIcon:
              IconButton(onPressed: () {
                _textController.clear();
              }, icon: const Icon(Icons.clear)
              ),
             ),
            ),
              MaterialButton(
                  onPressed: () {
                    userPost = _textController.text;
                  },
                color: Colors.red,
                child: const Text('Post', style: TextStyle(color: Colors.yellow)),
              )
            ],
        ),
      ),
    );
  }
}
