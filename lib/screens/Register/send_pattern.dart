class SendPattern {
  final String patternCode;
  final String originator;
  final String recipient;
  final Object values;

  SendPattern({
    required this.patternCode,
    required this.originator,
    required this.recipient,
    required this.values,
  });

  factory SendPattern.fromJson(Map<String, dynamic> json) {
    return SendPattern(
      patternCode: json['pattern_code'],
      originator: json['originator'],
      recipient: json['recipient'],
      values: json['values'],
    );
  }
}
