class User {
  final String name;
  final int totalScore;
  final int quizzesTaken;
  final Map<String, int> categoryScores;

  User({
    required this.name,
    this.totalScore = 0,
    this.quizzesTaken = 0,
    Map<String, int>? categoryScores,
  }) : categoryScores = categoryScores ?? {};

  User copyWith({
    String? name,
    int? totalScore,
    int? quizzesTaken,
    Map<String, int>? categoryScores,
  }) {
    return User(
      name: name ?? this.name,
      totalScore: totalScore ?? this.totalScore,
      quizzesTaken: quizzesTaken ?? this.quizzesTaken,
      categoryScores: categoryScores ?? this.categoryScores,
    );
  }
}