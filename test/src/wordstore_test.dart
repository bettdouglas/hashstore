// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';
import 'package:wordstore/wordstore.dart';

void main() {
  group('Wordstore', () {
    test('can be instantiated', () {
      expect(Wordstore(), isNotNull);
    });

    test('returns a list of hashes with words equal to the input ', () {
      final ws = Wordstore();
      const input = 'hello douglas';
      final result = ws.store(input);
      expect(result.hash, hasLength(2));
    });

    test('returns a map with keys containing all words in the input', () {
      final ws = Wordstore();
      const input = 'hello douglas';
      final result = ws.store(input);
      expect(result.store.keys, hasLength(2));
    });
  });
}
