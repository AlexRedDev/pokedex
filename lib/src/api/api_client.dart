import 'package:http/http.dart' as http;

const String _baseUrl = 'pokeapi.co';

class API_Clinet {
  // HttpClient _client = HttpClient();

  Uri _buildUrin() {
    Map<String, String> query = {'limit': '20', 'offest': '20'};
    return Uri(
      scheme: 'https',
      host: _baseUrl,
      path: '/api/v2/pokemon',
      queryParameters: query,
    );
  }

  Future<void> fetchPokemons() async {
    final uri = _buildUrin();
    final response = await http.get(Uri.parse(
        'https://gateway.marvel.com:443/v1/public/characters?ts=1&hash=680820be5d9cd9f748a25b54d05aca9d603d4605&apikey=90ac13cfedb68d1ed39277886fc07269'));
    print(response.body);
  }

  Future<String> fetchPokem(String pokemonName) async {
    final uri = Uri(
      scheme: 'https',
      host: _baseUrl,
      path: '/api/v2/pokemon/$pokemonName',
    );
    final response = await http.get(uri);
    print(response.body);
    return response.body;
  }
}
