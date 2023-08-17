import 'package:flutter/material.dart';
import 'package:simpleapp/model/LocationFact.dart';

class Location {
  final String name;
  final String url;
  final List<LocationFact> facts;
  //removed empty Location() constructor
  Location(this.name, this.url, this.facts);
}
