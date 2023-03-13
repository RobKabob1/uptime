import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:uptime/providers/server_provider.dart';

class Reports extends ConsumerStatefulWidget {
  const Reports({super.key, required String title});

  @override
  ConsumerState<Reports> createState() => _ReportsState();
}

class _ReportsState extends ConsumerState<Reports> {
  @override
  Widget build(BuildContext context) {
    // final notifier = ref.watch(serversProvider);
    return const Placeholder();
  }
}
