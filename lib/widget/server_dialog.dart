import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uptime/providers/server_provider.dart';

class ServerDialog extends ConsumerWidget {
  ServerDialog({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(serversProvider);
    return AlertDialog(
      title: const Text('New Server'),
      content: SizedBox(
        height: 150,
        child: Column(
          children: [
            const Text('Please put in the server name or IP address'),
            TextField(
              controller: controller,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text('Add'),
          onPressed: () {
            notifier.addItem(controller.text);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
