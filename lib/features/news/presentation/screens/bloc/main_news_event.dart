part of 'main_news_bloc.dart';

abstract class MainNewsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MainNewsGetRecentNewsEvent extends MainNewsEvent {}
