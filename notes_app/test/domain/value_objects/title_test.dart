import 'dart:ffi';

import 'package:dartz/dartz.dart';
import "package:flutter_test/flutter_test.dart";
import "package:matcher/matcher.dart" as matcher;
import "package:equatable/equatable.dart";

void main() {
  group('Title', () {
    test('should return Failure when value is empty', () {
      //arrange
      var title = Title.create('').fold((err) => err, (title) => title);

      //assert
      expect(title, matcher.TypeMatcher<Failure>());
    });

    test('should create title when value is not empty', () {
      //arrange
      var str = 'Programming 101';
      var title = Title.create(str).getOrElse(null);

      //assert
      expect(title.value, str);
    });
  });
}

class Title {
  final String Value;
  Title._(this.Value);

  create(String value) => "";
}

class Failure {}
