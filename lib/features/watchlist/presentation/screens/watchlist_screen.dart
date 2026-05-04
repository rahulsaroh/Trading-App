import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../providers/watchlist_provider.dart';
import '../widgets/watchlist_item_row.dart';

class WatchlistScreen extends ConsumerStatefulWidget {
  const WatchlistScreen({super.key});

  @override
  ConsumerState<WatchlistScreen> createState() => _WatchlistScreenState();
}

class _WatchlistScreenState extends ConsumerState<WatchlistScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final watchlistsAsync = ref.watch(watchlistStateProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Watchlist'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.add), onPressed: () => _showAddWatchlistDialog(context)),
        ],
        bottom: watchlistsAsync.when(
          data: (lists) => TabBar(
            isScrollable: true,
            indicatorColor: AppColors.primaryBlue,
            labelColor: AppColors.primaryBlue,
            unselectedLabelColor: AppColors.textSecondary,
            tabs: lists.map((l) => Tab(text: l.name)).toList(),
          ),
          loading: () => null,
          error: (_, __) => null,
        ),
      ),
      body: watchlistsAsync.when(
        data: (lists) => TabBarView(
          children: lists.map((l) => _WatchlistItemsList(watchlistId: l.id)).toList(),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, __) => Center(child: Text('Error: $e')),
      ),
    );
  }

  void _showAddWatchlistDialog(BuildContext context) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Text('Create Watchlist'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(hintText: 'Enter name'),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref.read(watchlistStateProvider.notifier).addWatchlist(controller.text);
                Navigator.pop(context);
              }
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}

class _WatchlistItemsList extends ConsumerWidget {
  final int watchlistId;
  const _WatchlistItemsList({required this.watchlistId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsAsync = ref.watch(currentWatchlistItemsProvider(watchlistId));

    return itemsAsync.when(
      data: (items) => items.isEmpty
          ? const Center(child: Text('Empty Watchlist'))
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => WatchlistItemRow(
                item: items[index],
                onDelete: () => ref.read(currentWatchlistItemsProvider(watchlistId).notifier).removeItem(items[index].id),
              ),
            ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, __) => Center(child: Text('Error loading items')),
    );
  }
}
