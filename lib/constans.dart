class Constants {

  // Category list
  static const List<String> listCategory = [
    "Resonance",
    "Balance",
    "Strength",
    "Focus"
  ];

  // Category type list 1
  static const List<String> listItem = [
    "7.5 bpm",
    "7 bpm",
    "6 bpm",
    "5 bpm",
    "5.5 bpm",
  ];

  // Category type list 2
  static const List<String> listItem1 = [
    "5.5 bpm",
    "4 bpm",
    "3 bpm",
    "2.1 bpm"
  ];

  // This is dynamic list, will change base on category selected
  static const Map<int, List<String>> dynamicMap = {
    1: listItem,
    2: listItem1,
    3: listItem,
    4: listItem1
  };
}
