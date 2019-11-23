import 'dart:convert';
import 'dart:io';
import 'dart:async';

class ServicesRest {
  int ok = 0;
  String link = "http://embarcadero41.club/api/";
  //String link = "http://localhost:3000/api/";

  //GET
  Future<String> apiRequestGet(String url) async {
    print(url);
    ok = 0;
    String reply = "";
    try {
      HttpClient httpClient = new HttpClient();
      HttpClientRequest request =
          await httpClient.getUrl(Uri.parse(link + url));
      HttpClientResponse response = await request.close();
      if (response.statusCode == 200) {
        print("CORRECT 200");
        reply = await response.transform(utf8.decoder).join();
        httpClient.close();
        return reply;
      } else {
        if (response.statusCode == 401) {
          print("ERROR 401");
          reply = await response.transform(utf8.decoder).join();
          httpClient.close();
          return reply;
        } else {
          if (response.statusCode == 500) {
            print("ERROR 500");
            reply = await response.transform(utf8.decoder).join();
            httpClient.close();
            return reply;
          } else {
            print(
                'Error getting IP address:\nHttp status =  ${response.statusCode}');
          }
        }
      }
    } catch (exception) {
      print(exception);
    }
  }

  Future<String> apiRequestPost(String url, Map jsonMap) async {
    ok = 0;
    String reply = "";
    try {
      HttpClient httpClient = new HttpClient();
      HttpClientRequest request =
          await httpClient.postUrl(Uri.parse(link + url));
      print(request);
      request.headers.set('content-type', 'application/json');
      request.add(utf8.encode(json.encode(jsonMap)));
      HttpClientResponse response = await request.close();
      print(jsonMap);
      if (response.statusCode == 200) {
        ok = 200;
        print("CORRECTO 200 : LISTAR");
        reply = await response.transform(utf8.decoder).join();
        httpClient.close();
        return reply;
      } else {
        if (response.statusCode == 401) {
          ok = 401;
          print("ERROR 401");
          reply = await response.transform(utf8.decoder).join();
          httpClient.close();
          return reply;
        } else {
          if (response.statusCode == 500) {
            ok = 500;
            print("ERROR 500");
            reply = await response.transform(utf8.decoder).join();
            httpClient.close();
            return reply;
          } else {
            if (response.statusCode == 502) {
              ok = 502;
              print("ERROR 502");
              reply = await response.transform(utf8.decoder).join();
              httpClient.close();
              return reply;
            } else {
              print(
                  'Error getting IP address:\nHttp status =  ${response.statusCode}');
            }
          }
        }
      }
    } catch (exception) {
      print(exception);
    }
  }
}
