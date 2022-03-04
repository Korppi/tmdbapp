import 'dart:convert';

import 'package:flutter/material.dart';

@immutable
class Network {
  final String? name;
  final int? id;
  final String? logoPath;
  final String? originCountry;

  const Network({this.name, this.id, this.logoPath, this.originCountry});

  @override
  String toString() {
    return 'Network(name: $name, id: $id, logoPath: $logoPath, originCountry: $originCountry)';
  }

  factory Network.fromMap(Map<String, dynamic> data) => Network(
        name: data['name'] as String?,
        id: data['id'] as int?,
        logoPath: data['logo_path'] as String?,
        originCountry: data['origin_country'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'id': id,
        'logo_path': logoPath,
        'origin_country': originCountry,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Network].
  factory Network.fromJson(String data) {
    return Network.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Network] to a JSON string.
  String toJson() => json.encode(toMap());
}
