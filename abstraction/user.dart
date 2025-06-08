import 'dart:async';

void main() {
  NetworkServices networkServices = NetworkServices("ukasha");
  GetServices getServices = GetServices();

  print(networkServices.name);
  Map<String, String> data = {'email': 'ukasha@gmail.com', 'password': '1234'};
  networkServices.postApi(data);
  getServices.getApi({'name': 'ukasha', 'id': '283'});
}

abstract class BaseApiService {
  void getApi(Map<String, dynamic> para);
  void postApi(var data);
}

class NetworkServices extends BaseApiService {
  String name;
  NetworkServices(this.name);

  @override
  void getApi(Map<String, dynamic> para) {}
  @override
  void postApi(var data) async {
    print("hit api");
    await Future.delayed(Duration(seconds: 3));
    print(" user successfully login");
    print(data['email']);
    print(data['password']);
  }
}

class GetServices extends BaseApiService {
  @override
  void getApi(Map<String, dynamic> para) {
    print("get api");
    print(para['name']);
  }

  @override
  void postApi(var data) {}
}
