import 'package:flutter_test/flutter_test.dart';

import 'package:pig_latin/pig_latin.dart';

void main() {
  test('translates input values into pig latin', () {
    final translator = PigLatin();
    expect(translator.translate("this is words"), "isthay isay ordsway ");
    expect(translator.translate("Yep this is pig latin alright"), "epYay isthay isay igpay atinlay alrightay ");
    expect(translator.translate("Wow this translates pig latin"), "owWay isthay anslatestray igpay atinlay ");
  });
}
