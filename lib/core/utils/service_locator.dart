import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/*
* Used GetIt for creating singleton pattern to apply dependency injection
* */
class ServiceLocator {
  static final getIt = GetIt.instance;

  void setupServiceLocator() {
    // create a singleton object for ApiService to easily locate it
    getIt.registerSingleton<ApiService>(
      ApiService(
        Dio(),
      ),
    );
    getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(
        getIt.get<ApiService>(),
      ),
    );
    getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(
        getIt.get<ApiService>(),
      ),
    );
  }
}
