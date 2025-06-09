// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$characterBasicHash() => r'3343354f8863d98f9b2700c6e1e316d51af53173';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [characterBasic].
@ProviderFor(characterBasic)
const characterBasicProvider = CharacterBasicFamily();

/// See also [characterBasic].
class CharacterBasicFamily extends Family<AsyncValue<Basic>> {
  /// See also [characterBasic].
  const CharacterBasicFamily();

  /// See also [characterBasic].
  CharacterBasicProvider call(String ocid) {
    return CharacterBasicProvider(ocid);
  }

  @override
  CharacterBasicProvider getProviderOverride(
    covariant CharacterBasicProvider provider,
  ) {
    return call(provider.ocid);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'characterBasicProvider';
}

/// See also [characterBasic].
class CharacterBasicProvider extends AutoDisposeFutureProvider<Basic> {
  /// See also [characterBasic].
  CharacterBasicProvider(String ocid)
    : this._internal(
        (ref) => characterBasic(ref as CharacterBasicRef, ocid),
        from: characterBasicProvider,
        name: r'characterBasicProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$characterBasicHash,
        dependencies: CharacterBasicFamily._dependencies,
        allTransitiveDependencies:
            CharacterBasicFamily._allTransitiveDependencies,
        ocid: ocid,
      );

  CharacterBasicProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ocid,
  }) : super.internal();

  final String ocid;

  @override
  Override overrideWith(
    FutureOr<Basic> Function(CharacterBasicRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CharacterBasicProvider._internal(
        (ref) => create(ref as CharacterBasicRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ocid: ocid,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Basic> createElement() {
    return _CharacterBasicProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CharacterBasicProvider && other.ocid == ocid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ocid.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CharacterBasicRef on AutoDisposeFutureProviderRef<Basic> {
  /// The parameter `ocid` of this provider.
  String get ocid;
}

class _CharacterBasicProviderElement
    extends AutoDisposeFutureProviderElement<Basic>
    with CharacterBasicRef {
  _CharacterBasicProviderElement(super.provider);

  @override
  String get ocid => (origin as CharacterBasicProvider).ocid;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
