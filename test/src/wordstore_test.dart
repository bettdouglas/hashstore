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

    test('saveStore throws UnimplementedError', () {
      final ws = Wordstore();
      expect(
        () => ws.saveStore('password'),
        throwsA(isA<UnimplementedError>()),
      );
    });
  });

  group('HashResult', () {
    test('can be instantiated', () {
      expect(HashResult(store: {}, hash: []), isNotNull);
    });

    test('picks properties', () {
      final hs = HashResult(store: {}, hash: []);
      expect(hs.hash, isEmpty);
      expect(hs.store, isEmpty);

      final hs2 = HashResult(store: {1: 'hello'}, hash: [1]);
      expect(hs2.hash, equals([1]));
      expect(hs2.store, equals({1: 'hello'}));
    });
  });
}
