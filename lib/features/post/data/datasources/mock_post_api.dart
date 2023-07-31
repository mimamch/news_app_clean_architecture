import 'package:dio/dio.dart';

class MockPostApiJson {
  List<Map<String, dynamic>> posts = [
    {
      "id": 1,
      "title": "Flutter is great",
      "body": "Flutter is most greates technology"
    },
    {
      "id": 2,
      "title": "Indonesia's Capital moves to Kalimantan",
      "body": "Kalimantan will be Indonesia's New Capital"
    },
    {"id": 3, "title": "lorem ipsum", "body": "lorem ipsum dolor sit amet"},
  ];

  Response getposts() {
    return Response(
        requestOptions: RequestOptions(), data: Iterable.castFrom(posts));
  }

  Response postById(int id) {
    return Response(
        requestOptions: RequestOptions(),
        data: posts.firstWhere(
          (element) => element['id'] == id,
          orElse: () => throw DioException(
              requestOptions: RequestOptions(),
              response: Response(
                  requestOptions: RequestOptions(),
                  data: {"message": "Post with id: $id not found"})),
        ));
  }
}
