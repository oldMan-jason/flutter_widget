
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:date_format/date_format.dart';

main() async {
  
  var url = "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";

    // Await the http get response, then decode the json-formatted responce.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
     
      print(jsonResponse);
    } else {
      print("Request failed with status: ${response.statusCode}.");
    }
    print(formatDate(DateTime(1989, 2, 21), [yyyy, '*', mm, '*', dd]));

}