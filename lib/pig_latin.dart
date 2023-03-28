library pig_latin;

/// A Pig Latin translator.
class PigLatin {
  /// translates the phrase into pig latin.
  String translate(String phrase) {
    String translated = '';

    int start = 0;
    for(var i = 0; i < phrase.length; i++) {
      
      int end = i;
      if(phrase[i] == ' ' || i == phrase.length-1) {
        String word = '';
        if(i == phrase.length-1){
          word = phrase.substring(start);
        } else {
          word = phrase.substring(start, end);
        }
        int count = 0;
        String ending = '';
        while(word[count].toLowerCase() != 'a' && word[count].toLowerCase() != 'e' && word[count].toLowerCase() != 'i' && word[count].toLowerCase() != 'o' && word[count].toLowerCase() != 'u') {
          if(word[count].toLowerCase() == 'a' && word[count].toLowerCase() == 'e' && word[count].toLowerCase() == 'i' && word[count].toLowerCase() == 'o' && word[count].toLowerCase() == 'u'){
            break;
          }
          ending += word[count];
          count += 1;
        }
        translated += '${word.substring(count)}${ending}ay ';
        
          start = i+1;
      }
      
    }

    return translated;
}
}
