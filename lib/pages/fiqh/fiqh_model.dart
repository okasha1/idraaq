class FiqhModel {
  String title;
  String explanation;
  FiqhModel({required this.title, required this.explanation});

  static List<FiqhModel> fiqhList = [
    FiqhModel(
        title: 'Declaration',
        explanation:
            'This is where you declare your intentions to be a muslim'),
    FiqhModel(
        title: 'Establishment of salat',
        explanation: 'Perform all the obligatory prayers and steadfast'),
    FiqhModel(title: 'Pay Zakat', explanation: 'Give alms and charity'),
    FiqhModel(
        title: 'Ramadan', explanation: 'Fast during the month of ramadan'),
    FiqhModel(
        title: 'Perform Hajj',
        explanation: 'It is obligated to whoever is capable to perform hajj')
  ];
}
