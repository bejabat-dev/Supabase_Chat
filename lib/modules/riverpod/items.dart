import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items.g.dart';

@riverpod
class SearchItems extends _$SearchItems {
  @override
  Future<List<String>> build() async {
    final items = await ref.watch(itemsProvider.future);
    return items;
  }

  Future<void> search(String query) async {
    List<String> newList = [];
    final items = ref
        .read(itemsProvider)
        .maybeWhen(data: (value) => value, orElse: () => []);

    for (String item in items) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        newList.add(item);
      }
    }

    state = AsyncData(newList);
  }
}

@riverpod
class Items extends _$Items {
  @override
  Future<List<String>> build() async {
    List<String> allItems = ['Kemeja', 'Celana'];
    return allItems;
  }

  void addItem() {
    final currentItems =
        state.maybeWhen(data: (items) => items, orElse: () => []);

    final List<String> updatedItems = [
      'Baju',
      'Polisi',
      ...currentItems,
    ];

    state = AsyncData(updatedItems);
  }
}
