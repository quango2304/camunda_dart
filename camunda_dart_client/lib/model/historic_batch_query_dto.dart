//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HistoricBatchQueryDto {
  /// Returns a new [HistoricBatchQueryDto] instance.
  HistoricBatchQueryDto({
    this.batchId,
    this.type,
    this.completed,
    this.tenantIdIn = const [],
    this.withoutTenantId,
    this.sorting = const [],
  });

  /// Filter by batch id.
  String? batchId;

  /// Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  String? type;

  ///  Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned.
  bool? completed;

  /// Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids.
  List<String>? tenantIdIn;

  /// Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  bool? withoutTenantId;

  /// An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Has no effect for the `/count` endpoint
  List<HistoricBatchQueryDtoSortingInner>? sorting;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HistoricBatchQueryDto &&
    other.batchId == batchId &&
    other.type == type &&
    other.completed == completed &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    other.withoutTenantId == withoutTenantId &&
    _deepEquality.equals(other.sorting, sorting);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (batchId == null ? 0 : batchId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (completed == null ? 0 : completed!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (sorting == null ? 0 : sorting!.hashCode);

  @override
  String toString() => 'HistoricBatchQueryDto[batchId=$batchId, type=$type, completed=$completed, tenantIdIn=$tenantIdIn, withoutTenantId=$withoutTenantId, sorting=$sorting]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.batchId != null) {
      json[r'batchId'] = this.batchId;
    } else {
      json[r'batchId'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.completed != null) {
      json[r'completed'] = this.completed;
    } else {
      json[r'completed'] = null;
    }
    if (this.tenantIdIn != null) {
      json[r'tenantIdIn'] = this.tenantIdIn;
    } else {
      json[r'tenantIdIn'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    if (this.sorting != null) {
      json[r'sorting'] = this.sorting;
    } else {
      json[r'sorting'] = null;
    }
    return json;
  }

  /// Returns a new [HistoricBatchQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HistoricBatchQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HistoricBatchQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HistoricBatchQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HistoricBatchQueryDto(
        batchId: mapValueOfType<String>(json, r'batchId'),
        type: mapValueOfType<String>(json, r'type'),
        completed: mapValueOfType<bool>(json, r'completed'),
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId'),
        sorting: HistoricBatchQueryDtoSortingInner.listFromJson(json[r'sorting']),
      );
    }
    return null;
  }

  static List<HistoricBatchQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HistoricBatchQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HistoricBatchQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HistoricBatchQueryDto> mapFromJson(dynamic json) {
    final map = <String, HistoricBatchQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HistoricBatchQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HistoricBatchQueryDto-objects as value to a dart map
  static Map<String, List<HistoricBatchQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HistoricBatchQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HistoricBatchQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

