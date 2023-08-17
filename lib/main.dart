import 'package:flutter/material.dart';
import 'package:simpleapp/model/location.dart';
import 'location.dart';
import 'mocks/MockLocation.dart';

void main() {
  final Location mockLocation = MockLocation(); //added final keyword and removed FetchAny
  return runApp(MaterialApp(home: locationDetail(location: mockLocation)));
}
