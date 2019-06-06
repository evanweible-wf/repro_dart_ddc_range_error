import 'dart:collection';

// If this import is removed, the issue is resolved.
import 'package:collection/collection.dart' as unused;

// Issue also reproduces with: `ItemSizeCollection implements _ItemSizeCollectionMixin, List<Size>`
abstract class ItemSizeCollection extends _ItemSizeCollectionMixin implements List {
  factory ItemSizeCollection.variable(List sizes) {
    return new _VariableItemSizeCollection(sizes);
  }
}

abstract class _ItemSizeCollectionMixin implements List {
  bool equals(ItemSizeCollection other) => false;
}

class _VariableItemSizeCollection extends UnmodifiableListView with _ItemSizeCollectionMixin implements ItemSizeCollection {
  _VariableItemSizeCollection(List _sizes) : super(_sizes);
}
