import 'package:flutter/material.dart';


class AnimatedListScreen extends StatefulWidget {
  const AnimatedListScreen({super.key});

  @override
  State<AnimatedListScreen> createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<AnimatedListScreen> {
  
  final _items = [];

 
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  
  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }

  
  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          color: Color.fromARGB(255, 211, 16, 26),
          child: ListTile(
            contentPadding: EdgeInsets.all(8),
            title: Text("Deleted", style: TextStyle(fontSize: 16)),
          ),
        ),
      );
      
    }, duration: const Duration(milliseconds: 300));

    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 15, 102),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 93, 93),
        centerTitle: true,
        title: const Text('Flutter Mapp'),
      ),
    
      body: Column(
        children: [
          IconButton( onPressed: _addItem, icon: const Icon(Icons.add,color: Colors.white,),
          color: Color.fromARGB(255, 96, 93, 93),),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(8),
              itemBuilder: (_, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    elevation: 10,
                    color: Colors.orange,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                      title:
                          Text(_items[index], style: const TextStyle(fontSize: 20)),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete,color: Color.fromARGB(255, 193, 183, 183),),
                        onPressed: () => _removeItem(index),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    
    );
  }
}