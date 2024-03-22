String capitalizeEachWord(String inputString) {
  if (inputString == null || inputString.isEmpty) {
    return inputString;
  }

  List<String> words = inputString.split(' ');
  List<String> capitalizedWords = [];

  for (String word in words) {
    String firstLetter = word.substring(0, 1).toUpperCase();
    String restOfWord = word.substring(1).toLowerCase();
    capitalizedWords.add(firstLetter + restOfWord);
  }

  return capitalizedWords.join(' ');
}
