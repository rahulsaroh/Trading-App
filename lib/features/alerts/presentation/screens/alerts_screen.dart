import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../providers/alert_provider.dart';

class AlertsScreen extends ConsumerWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alertsAsync = ref.watch(alertStateProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('My Alerts'),
        backgroundColor: AppColors.background,
        actions: [
          IconButton(icon: const Icon(Icons.add), onPressed: () => _showCreateAlert(context, ref)),
        ],
      ),
      body: alertsAsync.when(
        data: (alerts) => alerts.isEmpty
            ? const Center(child: Text('No active alerts'))
            : ListView.builder(
                itemCount: alerts.length,
                itemBuilder: (context, index) {
                  final alert = alerts[index];
                  return Dismissible(
                    key: Key(alert.id.toString()),
                    onDismissed: (_) => ref.read(alertStateProvider.notifier).deleteAlert(alert.id),
                    background: Container(color: AppColors.accentRed, alignment: Alignment.centerRight, padding: const EdgeInsets.only(right: 20), child: const Icon(Icons.delete, color: Colors.white)),
                    child: ListTile(
                      title: Text(alert.symbol, style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('${alert.type} • Target: ${alert.targetValue}'),
                      trailing: Switch(
                        value: alert.isActive,
                        onChanged: (val) => ref.read(alertStateProvider.notifier).toggleAlert(alert.id, val),
                        activeColor: AppColors.primaryBlue,
                      ),
                    ),
                  );
                },
              ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('Error loading alerts')),
      ),
    );
  }

  void _showCreateAlert(BuildContext context, WidgetRef ref) {
    // Show create alert implementation
  }
}
