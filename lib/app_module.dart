import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterapi/services/hhtp_client_interface.dart';


import 'controllers/home_controller.dart';
import 'services/dio_client.dart';
import 'services/json_placeholder_service.dart';
import 'views/home_page.dart';

class AppModule extends Module {


  //HomeController(JsonPlacehoderService(DioClient()));

  @override
  
  List<Bind> get binds => [
    Bind.singleton<IHttpClient>((i) => DioClient()),
    Bind.singleton((i) => JsonPlacehoderService(i())), 
    Bind.singleton((i) => HomeController(i())),

  ];

@override
 
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_,__) => HomePage())
  ];
}