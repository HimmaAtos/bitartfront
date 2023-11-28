class Reponse<T> {
  bool statusCode;
  T data;

  Reponse(this.statusCode, this.data);

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'data': data,
    };
  }
}
