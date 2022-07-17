/// {@template wordstore}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
// ignore_for_file: public_member_api_docs

class Wordstore {
  /// {@macro wordstore}
  const Wordstore();

  /// Generates a HashResult for this input. The words will be hashed in order
  /// of inputs
  HashResult store(String input) {
    final store = <String, int>{};
    final words = input.split(' ');
    final wordsSet = words.toSet();
    for (final word in wordsSet) {
      store.putIfAbsent(word, () => store.keys.length);
    }

    final hash = words.map((e) => store[e]!).toList();
    final hashStore = store.map((key, value) => MapEntry(value, key));

    return HashResult(store: hashStore, hash: hash);
  }

  Future<String> saveStore(String password) async {
    throw UnimplementedError();
  }
}

class HashResult {
  // Create
  HashResult({
    required this.store,
    required this.hash,
  });
  final Map<int, String> store;
  final List<int> hash;
}
