class Details {
  Details({required this.name, required this.url});

   final String name;
   final String url;

  factory Details.fromJson(Map<String, dynamic> json) {
    return Details(
      name: json['name'],
      url: json['url'],
    );
  }
}