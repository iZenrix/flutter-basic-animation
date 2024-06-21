import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({super.key});

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final _items = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    _items.insert(0, 'Item ${_items.length + 1}');
    _listKey.currentState!
        .insertItem(0, duration: const Duration(milliseconds: 500));
  }

  void _removeItem(int index) {
    _listKey.currentState!.removeItem(
      index,
      (context, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.redAccent,
            child: ListTile(
              title: Text(
                'Deleted',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 500),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _addItem,
          child: const Text('Add Item'),
        ),
        Expanded(
          child: AnimatedList(
            key: _listKey,
            initialItemCount: _items.length,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: ListTile(
                  title: Text(_items[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      _removeItem(index);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
