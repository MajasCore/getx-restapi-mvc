import 'package:http/http.dart' as https;
import 'package:marvel/model/characters_model.dart';

class RemoteService {
  static var client = https.Client();

  static Future<Characters?> fetchData() async {
    Uri url = Uri.parse(
        "https://gateway.marvel.com/v1/public/characters?ts=1&apikey=bbf7696d21f19b77ced9ca149ce55271&hash=16ce16ddfaf6f3f67fd738be514ef349");
    var response = await client.get(url);

    if (response.statusCode == 200) {
      String jsonString = response.body;

      return charactersFromJson(jsonString);
    } else {
      print("error");
      return null;
    }
  }
}
