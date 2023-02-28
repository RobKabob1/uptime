import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uptime/providers/server_provider.dart';
import 'package:uptime/widget/server_dialog.dart';

class Servers extends ConsumerStatefulWidget {
  const Servers({super.key, required String title});

  @override
  ConsumerState<Servers> createState() => _ServersState();
}

class _ServersState extends ConsumerState<Servers> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(serversProvider);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: AnimatedList(
              key: notifier.key,
              initialItemCount: notifier.items.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        notifier.items[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          notifier.removeItem(index);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return ServerDialog();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
