class QueueEmptyException implements Exception {
  final String message;

  QueueEmptyException(this.message);

  @override
  String toString() {
    return message;
  }
}
