import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sw_dating_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.bg).existsSync(), isTrue);
    expect(File(Images.bg2).existsSync(), isTrue);
    expect(File(Images.chat).existsSync(), isTrue);
    expect(File(Images.h1).existsSync(), isTrue);
    expect(File(Images.h2).existsSync(), isTrue);
    expect(File(Images.h3).existsSync(), isTrue);
    expect(File(Images.h4).existsSync(), isTrue);
    expect(File(Images.h5).existsSync(), isTrue);
    expect(File(Images.h6).existsSync(), isTrue);
    expect(File(Images.h7).existsSync(), isTrue);
    expect(File(Images.h8).existsSync(), isTrue);
    expect(File(Images.p1).existsSync(), isTrue);
    expect(File(Images.p2).existsSync(), isTrue);
    expect(File(Images.slideShow).existsSync(), isTrue);
    expect(File(Images.user).existsSync(), isTrue);
  });
}
