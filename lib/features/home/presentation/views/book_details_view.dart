import 'dart:async';

import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  initState() {
    super.initState();

    final categories = widget.bookModel.volumeInfo?.categories;
    final category = categories != null ? categories[0] : 'programming';

    unawaited(BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      category: category,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: BookDetailsViewBody(
            bookModel: widget.bookModel,
          ),
        ),
      ),
    );
  }
}
