import 'dart:collection';

// If this import is removed, the issue is resolved.
import 'package:collection/collection.dart' as unused;

abstract class ItemSizeCollection {
  factory ItemSizeCollection.variable(List sizes) {
    return new _VariableItemSizeCollection(sizes);
  }
}

class _VariableItemSizeCollection extends UnmodifiableListView with ItemSizeCollection {
  _VariableItemSizeCollection(List _sizes) : super(_sizes);
}
