import 'package:covoid19/services/networking.dart';
final coronaCount='https://api.covid19api.com/summary';
class CoronaUpdate{
  Future<dynamic> getCoronaData() async{

    NetworkingHelper networkHelper= NetworkingHelper(url:'$coronaCount');
    var coronaData=await networkHelper.getData();

    return coronaData;
  }
}