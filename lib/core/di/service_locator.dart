import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_clean_architecture/core/network/network_client.dart';
import 'package:news_app_clean_architecture/core/shared/contants.dart';
import 'package:news_app_clean_architecture/features/news/data/api/news_api.dart';
import 'package:news_app_clean_architecture/features/news/data/repository/news_repository_impl.dart';
import 'package:news_app_clean_architecture/features/news/domain/repository/news_repository.dart';
import 'package:news_app_clean_architecture/features/news/domain/usecase/get_recent_news_usecase.dart';
import 'package:news_app_clean_architecture/features/news/presentation/screens/bloc/main_news_bloc.dart';
import 'package:news_app_clean_architecture/features/post/data/datasources/mock_post_api.dart';
import 'package:news_app_clean_architecture/features/post/data/datasources/post_api.dart';
import 'package:news_app_clean_architecture/features/post/data/repositories/post_repository_impl.dart';
import 'package:news_app_clean_architecture/features/post/domain/repositories/post_repository.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/create_post_use_case.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/delete_post_by_id_use_case.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/edit_post_use_case.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/get_all_posts_use_case.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/get_post_by_id_use_case.dart';
import 'package:news_app_clean_architecture/features/post/presentation/bloc/post_bloc.dart';

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

  // Post
  //
  // Registering Mock Post API
  serviceLocator
      .registerLazySingleton<MockPostApiJson>(() => MockPostApiJson());
  // Registering Post API
  serviceLocator.registerLazySingleton<PostApi>(
      () => PostApi(serviceLocator<Dio>(), serviceLocator<MockPostApiJson>()));

  // Registering Post Repository
  serviceLocator.registerLazySingleton<PostRepository>(
      () => PostRepositoryImpl(serviceLocator<PostApi>()));

  // Registering Use Cases
  serviceLocator.registerLazySingleton(
      () => GetAllPostsUseCase(serviceLocator<PostRepository>()));
  serviceLocator.registerLazySingleton(
      () => GetPostByIdUseCase(serviceLocator<PostRepository>()));
  serviceLocator.registerLazySingleton(
      () => CreatePostUseCase(serviceLocator<PostRepository>()));
  serviceLocator.registerLazySingleton(
      () => EditPostUseCase(serviceLocator<PostRepository>()));
  serviceLocator.registerLazySingleton(
      () => DeletePostByIdUseCase(serviceLocator<PostRepository>()));

  // Registering BLoC
  serviceLocator.registerFactory<PostBloc>(() => PostBloc(
        getAllPostsUseCase: serviceLocator<GetAllPostsUseCase>(),
        getPostByIdUseCase: serviceLocator<GetPostByIdUseCase>(),
        createPostUseCase: serviceLocator<CreatePostUseCase>(),
        editPostUseCase: serviceLocator<EditPostUseCase>(),
        deletePostByIdUseCase: serviceLocator<DeletePostByIdUseCase>(),
      ));
}
