part of 'newst_books_cubit.dart';

sealed class NewstBooksState extends Equatable {
  const NewstBooksState();

  @override
  List<Object> get props => [];
}

final class NewstBooksInitial extends NewstBooksState {}

class NewstBooksLoading extends NewstBooksState {}

class NewstBooksFailure extends NewstBooksState {
  final String errMessage;

  const NewstBooksFailure(this.errMessage);
}

class NewstBooksSuccess extends NewstBooksState {
  final List<BookModel> books;

  const NewstBooksSuccess(this.books);
}
