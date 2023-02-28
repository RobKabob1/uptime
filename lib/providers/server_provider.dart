import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final serversProvider =
    ChangeNotifierProvider<ServersNotifier>((ref) => ServersNotifier());

class ServersNotifier extends ChangeNotifier {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  get items => _items;
  GlobalKey<AnimatedListState> get key => _key;

  void addItem(item) {
    _items.insert(0, item);
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const ListTile(
            title: Text(
              "Deleted",
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }
}
