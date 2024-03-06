//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProcessInstanceQueryDtoSortingInner {
  /// Returns a new [ProcessInstanceQueryDtoSortingInner] instance.
  ProcessInstanceQueryDtoSortingInner({
    this.sortBy,
    this.sortOrder,
  });

  /// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ProcessInstanceQueryDtoSortingInnerSortByEnum? sortBy;

  /// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
  ProcessInstanceQueryDtoSortingInnerSortOrderEnum? sortOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProcessInstanceQueryDtoSortingInner &&
    other.sortBy == sortBy &&
    other.sortOrder == sortOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortBy == null ? 0 : sortBy!.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode);

  @override
  String toString() => 'ProcessInstanceQueryDtoSortingInner[sortBy=$sortBy, sortOrder=$sortOrder]';

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

  /// Returns a new [ProcessInstanceQueryDtoSortingInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProcessInstanceQueryDtoSortingInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProcessInstanceQueryDtoSortingInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProcessInstanceQueryDtoSortingInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProcessInstanceQueryDtoSortingInner(
        sortBy: ProcessInstanceQueryDtoSortingInnerSortByEnum.fromJson(json[r'sortBy']),
        sortOrder: ProcessInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(json[r'sortOrder']),
      );
    }
    return null;
  }

  static List<ProcessInstanceQueryDtoSortingInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceQueryDtoSortingInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceQueryDtoSortingInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProcessInstanceQueryDtoSortingInner> mapFromJson(dynamic json) {
    final map = <String, ProcessInstanceQueryDtoSortingInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProcessInstanceQueryDtoSortingInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProcessInstanceQueryDtoSortingInner-objects as value to a dart map
  static Map<String, List<ProcessInstanceQueryDtoSortingInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProcessInstanceQueryDtoSortingInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProcessInstanceQueryDtoSortingInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
class ProcessInstanceQueryDtoSortingInnerSortByEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcessInstanceQueryDtoSortingInnerSortByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const instanceId = ProcessInstanceQueryDtoSortingInnerSortByEnum._(r'instanceId');
  static const definitionId = ProcessInstanceQueryDtoSortingInnerSortByEnum._(r'definitionId');
  static const definitionKey = ProcessInstanceQueryDtoSortingInnerSortByEnum._(r'definitionKey');
  static const businessKey = ProcessInstanceQueryDtoSortingInnerSortByEnum._(r'businessKey');
  static const tenantId = ProcessInstanceQueryDtoSortingInnerSortByEnum._(r'tenantId');

  /// List of all possible values in this [enum][ProcessInstanceQueryDtoSortingInnerSortByEnum].
  static const values = <ProcessInstanceQueryDtoSortingInnerSortByEnum>[
    instanceId,
    definitionId,
    definitionKey,
    businessKey,
    tenantId,
  ];

  static ProcessInstanceQueryDtoSortingInnerSortByEnum? fromJson(dynamic value) => ProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer().decode(value);

  static List<ProcessInstanceQueryDtoSortingInnerSortByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceQueryDtoSortingInnerSortByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceQueryDtoSortingInnerSortByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProcessInstanceQueryDtoSortingInnerSortByEnum] to String,
/// and [decode] dynamic data back to [ProcessInstanceQueryDtoSortingInnerSortByEnum].
class ProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer {
  factory ProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer() => _instance ??= const ProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  const ProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer._();

  String encode(ProcessInstanceQueryDtoSortingInnerSortByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcessInstanceQueryDtoSortingInnerSortByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcessInstanceQueryDtoSortingInnerSortByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'instanceId': return ProcessInstanceQueryDtoSortingInnerSortByEnum.instanceId;
        case r'definitionId': return ProcessInstanceQueryDtoSortingInnerSortByEnum.definitionId;
        case r'definitionKey': return ProcessInstanceQueryDtoSortingInnerSortByEnum.definitionKey;
        case r'businessKey': return ProcessInstanceQueryDtoSortingInnerSortByEnum.businessKey;
        case r'tenantId': return ProcessInstanceQueryDtoSortingInnerSortByEnum.tenantId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer] instance.
  static ProcessInstanceQueryDtoSortingInnerSortByEnumTypeTransformer? _instance;
}


/// Sort the results in a given order. Values may be `asc` for ascending order or `desc` for descending order. Must be used in conjunction with the sortBy parameter.
class ProcessInstanceQueryDtoSortingInnerSortOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcessInstanceQueryDtoSortingInnerSortOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = ProcessInstanceQueryDtoSortingInnerSortOrderEnum._(r'asc');
  static const desc = ProcessInstanceQueryDtoSortingInnerSortOrderEnum._(r'desc');

  /// List of all possible values in this [enum][ProcessInstanceQueryDtoSortingInnerSortOrderEnum].
  static const values = <ProcessInstanceQueryDtoSortingInnerSortOrderEnum>[
    asc,
    desc,
  ];

  static ProcessInstanceQueryDtoSortingInnerSortOrderEnum? fromJson(dynamic value) => ProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer().decode(value);

  static List<ProcessInstanceQueryDtoSortingInnerSortOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProcessInstanceQueryDtoSortingInnerSortOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProcessInstanceQueryDtoSortingInnerSortOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProcessInstanceQueryDtoSortingInnerSortOrderEnum] to String,
/// and [decode] dynamic data back to [ProcessInstanceQueryDtoSortingInnerSortOrderEnum].
class ProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer {
  factory ProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer() => _instance ??= const ProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  const ProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer._();

  String encode(ProcessInstanceQueryDtoSortingInnerSortOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcessInstanceQueryDtoSortingInnerSortOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcessInstanceQueryDtoSortingInnerSortOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return ProcessInstanceQueryDtoSortingInnerSortOrderEnum.asc;
        case r'desc': return ProcessInstanceQueryDtoSortingInnerSortOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer] instance.
  static ProcessInstanceQueryDtoSortingInnerSortOrderEnumTypeTransformer? _instance;
}


