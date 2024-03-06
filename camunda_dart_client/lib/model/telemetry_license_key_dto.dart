//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelemetryLicenseKeyDto {
  /// Returns a new [TelemetryLicenseKeyDto] instance.
  TelemetryLicenseKeyDto({
    this.customer,
    this.type,
    this.validUntil,
    this.unlimited,
    this.features = const {},
    this.raw,
  });

  /// The name of the customer the license was issued for.
  String? customer;

  /// The license type.
  String? type;

  /// The expiration date of the license.
  DateTime? validUntil;

  /// Flag that indicates if the license is unlimited.
  bool? unlimited;

  /// A map of features included in the license.
  Map<String, String> features;

  /// The raw license information.
  String? raw;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TelemetryLicenseKeyDto &&
    other.customer == customer &&
    other.type == type &&
    other.validUntil == validUntil &&
    other.unlimited == unlimited &&
    _deepEquality.equals(other.features, features) &&
    other.raw == raw;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customer == null ? 0 : customer!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (validUntil == null ? 0 : validUntil!.hashCode) +
    (unlimited == null ? 0 : unlimited!.hashCode) +
    (features.hashCode) +
    (raw == null ? 0 : raw!.hashCode);

  @override
  String toString() => 'TelemetryLicenseKeyDto[customer=$customer, type=$type, validUntil=$validUntil, unlimited=$unlimited, features=$features, raw=$raw]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.customer != null) {
      json[r'customer'] = this.customer;
    } else {
      json[r'customer'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.validUntil != null) {
      json[r'valid-until'] = _dateFormatter.format(this.validUntil!.toUtc());
    } else {
      json[r'valid-until'] = null;
    }
    if (this.unlimited != null) {
      json[r'unlimited'] = this.unlimited;
    } else {
      json[r'unlimited'] = null;
    }
      json[r'features'] = this.features;
    if (this.raw != null) {
      json[r'raw'] = this.raw;
    } else {
      json[r'raw'] = null;
    }
    return json;
  }

  /// Returns a new [TelemetryLicenseKeyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelemetryLicenseKeyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelemetryLicenseKeyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelemetryLicenseKeyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelemetryLicenseKeyDto(
        customer: mapValueOfType<String>(json, r'customer'),
        type: mapValueOfType<String>(json, r'type'),
        validUntil: mapDateTime(json, r'valid-until', r''),
        unlimited: mapValueOfType<bool>(json, r'unlimited'),
        features: mapCastOfType<String, String>(json, r'features') ?? const {},
        raw: mapValueOfType<String>(json, r'raw'),
      );
    }
    return null;
  }

  static List<TelemetryLicenseKeyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetryLicenseKeyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetryLicenseKeyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelemetryLicenseKeyDto> mapFromJson(dynamic json) {
    final map = <String, TelemetryLicenseKeyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelemetryLicenseKeyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelemetryLicenseKeyDto-objects as value to a dart map
  static Map<String, List<TelemetryLicenseKeyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelemetryLicenseKeyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelemetryLicenseKeyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

