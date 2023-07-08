part of 'main_news_bloc.dart';

abstract class MainNewsState extends Equatable {
  @override
  List<Object> get props => [];
}

class MainNewsInitialState extends MainNewsState {}

class MainNewsLoadingState extends MainNewsState {}

class MainNewsGetRecentNewsSuccessState extends MainNewsState {
  final List<NewsEntity> news;
  MainNewsGetRecentNewsSuccessState(this.news);

  @override
  List<Object> get props => [news];
}

class MainNewsErrorState extends MainNewsState {
  final String message;
  MainNewsErrorState(this.message);

  @override
  List<Object> get props => [message];
}
