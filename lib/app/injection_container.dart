import 'package:get_it/get_it.dart';
import 'package:teste_layout/app/client_factory.dart';
import 'package:teste_layout/presentation/features/splash/mobx/splash.store.dart';

final sl = GetIt.I;
//final GetIt sl = GetIt.instance;

void setupDependencies() {
  setupProvider();
  setupRepository();
  setupUseCase();
  setupMobx();
}

void setupClient({
  required String host,
  required String port,
  required String token,
  required String timeOut,
}) {
  final client = ClientFactory.baseClient;
  client?.options.baseUrl = '$host:$port';
  client?.options.headers = {
    'Authorization': 'Bearer static:$token',
  };
  client!.options.followRedirects = false;
  client.options.connectTimeout = int.tryParse(timeOut)! * 1000;
  client.options.receiveTimeout = int.tryParse(timeOut)! * 2000;
}

void setupProvider() {}

void setupRepository() {}

void setupUseCase() {}

void setupMobx() {
  sl.registerLazySingleton<SplashStore>(() => SplashStore());
}
