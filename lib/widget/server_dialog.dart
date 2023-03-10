import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uptime/providers/server_provider.dart';

class ServerDialog extends ConsumerWidget {
  ServerDialog({super.key, this.index});
  final int? index; //? because we want to find nullable values
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(serversProvider);

    index != null ? controller.text = notifier.items[index] : {};

    return AlertDialog(
      title:
          index != null ? const Text('Edit Server') : const Text('New Server'),
      content: SizedBox(
        height: 150,
        child: Column(
          children: [
            const Text('Please put in the server name or IP address'),
            TextField(
              autofocus: true,
              controller: controller,
              onSubmitted: (text) {
                index != null
                    ? notifier.editItem(controller.text, index)
                    : notifier.addItem(controller.text);
                Navigator.of(context).pop();
              },
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
          child: index != null ? const Text('Edit') : const Text('Add'),
          onPressed: () {
            index != null
                ? notifier.editItem(controller.text, index)
                : notifier.addItem(controller.text);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
