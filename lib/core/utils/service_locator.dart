import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/Home/data/repo/home_repo_impl.dart';
import 'api_services.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
