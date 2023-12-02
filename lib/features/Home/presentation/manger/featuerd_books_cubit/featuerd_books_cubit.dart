import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubit(this.homeRepo) : super(FeatuerdBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatuerdBooksLoading());
    var result = await homeRepo.FetchFeatuersBooks();

    result.fold((failure) {
      emit(FeatuerdBooksFailuer(failure.errMessage));
    }, (books) {
      emit(FeatuerdBooksSuccess(books));
    });
  }
}
