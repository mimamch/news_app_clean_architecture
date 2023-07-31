part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final List<Post> posts;

  const PostLoaded({required this.posts});

  @override
  List<Object> get props => [posts];
}

class PostDetail extends PostState {
  final Post post;

  const PostDetail({required this.post});

  @override
  List<Object> get props => [post];
}

class PostError extends PostState {
  final String message;

  const PostError({required this.message});

  @override
  List<Object> get props => [message];
}

class PostCreated extends PostState {}

class PostUpdated extends PostState {}

class PostDeleted extends PostState {}
