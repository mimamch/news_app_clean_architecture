part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object> get props => [];
}

class GetAllPostsEvent extends PostEvent {}

class GetPostByIdEvent extends PostEvent {
  final int id;

  const GetPostByIdEvent(this.id);

  @override
  List<Object> get props => [id];
}

class CreatePostEvent extends PostEvent {
  final Post post;

  const CreatePostEvent(this.post);

  @override
  List<Object> get props => [post];
}

class EditPostEvent extends PostEvent {
  final int id;
  final Post post;

  const EditPostEvent(this.id, this.post);

  @override
  List<Object> get props => [id, post];
}

class DeletePostEvent extends PostEvent {
  final int id;

  const DeletePostEvent(this.id);

  @override
  List<Object> get props => [id];
}
