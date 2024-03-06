//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupQueryDtoSortingInner {
  /// Returns a new [GroupQueryDtoSortingInner] instance.
  GroupQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  GroupQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  GroupQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'GroupQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sortBy != null) {
      json[r'sortBy'] = this.sortBy;
    } else {
      json[r'sortBy'] = null;
    }
    if (this.sortOrder != null) {
      json[r'sortOrder'] = this.sortOrder;
    } else {
      json[r'sortOrder'] = null;
    }
    return json;
  }

  /// Returns a new [GroupQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupQueryDtoSortingInner(
        sortBy: GroupQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: GroupQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<GroupQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, GroupQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<GroupQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class GroupQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const GroupQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const id = GroupQueryDtoSortingInnerSortByEnum._(r'id');
  static const name = GroupQueryDtoSortingInnerSortByEnum._(r'name');
  static const type = GroupQueryDtoSortingInnerSortByEnum._(r'type');

  /// List of all possible values in this [enum][GroupQueryDtoSortingInnerSortByEnum].
  static const values = <GroupQueryDtoSortingInnerSortByEnum>[
    id,
    name,
    type,
  ];

  static GroupQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => GroupQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<GroupQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GroupQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [GroupQueryDtoSortingInnerSortByEnum].
class GroupQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory GroupQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const GroupQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const GroupQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(GroupQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'id': return GroupQueryDtoSortingInnerSortByEnum.id;
        case r'name': return GroupQueryDtoSortingInnerSortByEnum.name;
        case r'type': return GroupQueryDtoSortingInnerSortByEnum.type;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static GroupQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class GroupQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const GroupQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = GroupQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = GroupQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][GroupQueryDtoSortingInnerSortOrderEnum].
  static const values = <GroupQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static GroupQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => GroupQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<GroupQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GroupQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [GroupQueryDtoSortingInnerSortOrderEnum].
class GroupQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory GroupQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const GroupQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const GroupQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(GroupQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return GroupQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return GroupQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static GroupQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


