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
        final result = await getAllPostsUseCase.call();
        emit(PostLoaded(posts: result));
      } on Failure catch (e) {
        PostError(message: _mapFailureToMessage(e));
      }
    }

    if (event is GetPostByIdEvent) {
      try {
        emit(PostLoading());
        final result = await getPostByIdUseCase.call(event.id);
        emit(PostDetail(post: result));
      } on Failure catch (e) {
        PostError(message: _mapFailureToMessage(e));
      }
    }

    if (event is CreatePostEvent) {
      emit(PostLoading());
      await createPostUseCase.call(event.post);
      emit(PostCreated());
    }

    if (event is EditPostEvent) {
      emit(PostLoading());
      await editPostUseCase.call(event.id, event.post);
      emit(PostUpdated());
    }

    if (event is DeletePostEvent) {
      emit(PostLoading());
      await deletePostByIdUseCase.call(event.id);
      emit(PostDeleted());
    }
  }
}

String _mapFailureToMessage(Failure failure) {
  return 'An error occurred';
}
