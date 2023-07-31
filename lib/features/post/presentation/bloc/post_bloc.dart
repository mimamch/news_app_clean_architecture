import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app_clean_architecture/core/error/failure.dart';
import 'package:news_app_clean_architecture/features/post/domain/entities/post.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/create_post_use_case.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/delete_post_by_id_use_case.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/edit_post_use_case.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/get_all_posts_use_case.dart';
import 'package:news_app_clean_architecture/features/post/domain/usecases/get_post_by_id_use_case.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final GetAllPostsUseCase getAllPostsUseCase;
  final GetPostByIdUseCase getPostByIdUseCase;
  final CreatePostUseCase createPostUseCase;
  final EditPostUseCase editPostUseCase;
  final DeletePostByIdUseCase deletePostByIdUseCase;

  PostBloc({
    required this.getAllPostsUseCase,
    required this.getPostByIdUseCase,
    required this.createPostUseCase,
    required this.editPostUseCase,
    required this.deletePostByIdUseCase,
  }) : super(PostInitial()) {
    on<PostEvent>(mapEventToState);
  }

  FutureOr<void> mapEventToState(
      PostEvent event, Emitter<PostState> emit) async {
    if (event is GetAllPostsEvent) {
      try {
        emit(PostLoading());
        final result = await getAllPostsUseCase();
        emit(PostLoaded(posts: result));
      } on Failure catch (e) {
        PostError(message: e.message);
      }
    }

    if (event is GetPostByIdEvent) {
      try {
        emit(PostLoading());
        final result = await getPostByIdUseCase(event.id);
        emit(PostDetail(post: result));
      } on Failure catch (e) {
        PostError(message: e.message);
      }
    }

    if (event is CreatePostEvent) {
      try {
        emit(PostLoading());
        await createPostUseCase(event.post);
        emit(PostCreated());
      } on Failure catch (e) {
        PostError(message: e.message);
      }
    }

    if (event is EditPostEvent) {
      try {
        emit(PostLoading());
        await editPostUseCase(event.id, event.post);
        emit(PostUpdated());
      } on Failure catch (e) {
        PostError(message: e.message);
      }
    }

    if (event is DeletePostEvent) {
      try {
        emit(PostLoading());
        await deletePostByIdUseCase(event.id);
        emit(PostDeleted());
      } on Failure catch (e) {
        PostError(message: e.message);
      }
    }
  }
}
