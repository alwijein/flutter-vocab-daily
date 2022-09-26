class HistoriesModel {
  String? vocab;

  HistoriesModel(
    this.vocab,
  );

  HistoriesModel.fromJson(Map<String, dynamic> json) {
    vocab = json['kalimat'];
  }

  Map<String, dynamic> toJson() {
    return {
      'kalimat': vocab,
    };
  }
}
