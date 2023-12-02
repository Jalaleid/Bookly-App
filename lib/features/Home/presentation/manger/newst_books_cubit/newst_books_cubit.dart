import 'package:bloc/bloc.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repo/home_repo.dart';

part 'newst_books_state.dart';

class NewstBooksCubit extends Cubit<NewstBooksState> {
  NewstBooksCubit(this.homeRepo) : super(NewstBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(NewstBooksLoading());
    var result = await homeRepo.FetchNewssetBooks();
    //print(result);

    result.fold((failure) {
      emit(NewstBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewstBooksSuccess(books));
    });
  }
}
