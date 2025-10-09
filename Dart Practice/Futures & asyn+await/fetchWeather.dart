/**Create a function fetchWeather() that:

Returns "Sunny" after a 3-second delay

Use Future.delayed

Call it in main() using async/await */

Future<String> fetchWeather() async {
  await Future.delayed(Duration(seconds: 3));

  return 'sunny';
}

void main() async {
  print('Fetching Weather.....');
  String weather = await fetchWeather();
  print('Weather:$weather');
}
