import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_clean_architecture/core/network/network_client.dart';
import 'package:news_app_clean_architecture/core/shared/contants.dart';
import 'package:news_app_clean_architecture/features/news/data/api/news_api.dart';
import 'package:news_app_clean_architecture/features/news/data/repository/news_repository_impl.dart';
import 'package:news_app_clean_architecture/features/news/domain/repository/news_repository.dart';
import 'package:news_app_clean_architecture/features/news/domain/usecase/get_recent_news_usecase.dart';
import 'package:news_app_clean_architecture/features/news/presentation/screens/bloc/main_news_bloc.dart';

final serviceLocator = GetIt.instance;

setupServiceLocator() async {
  serviceLocator.registerFactory<Constant>(() => Constant());
  serviceLocator.registerFactory<Dio>(
    () => NetworkClient(Dio(), constant: serviceLocator()).dio,
  );

  // News
  serviceLocator.registerFactory<MainNewsBloc>(() => MainNewsBloc());
  serviceLocator.registerLazySingleton<NewsApi>(() => NewsApi(
      dio: serviceLocator(), apiKey: serviceLocator<Constant>().apiKey));
  serviceLocator.registerLazySingleton<NewsRepository>(() => NewsRepositoryImpl(
      newsApi: serviceLocator(), apiKey: serviceLocator<Constant>().apiKey));
  serviceLocator.registerLazySingleton<GetRecentNewsUseCase>(
      () => GetRecentNewsUseCase(serviceLocator()));
}
