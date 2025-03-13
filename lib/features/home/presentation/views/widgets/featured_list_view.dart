import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccessState) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .29,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? kHorizontalPadding : 0,
                      right: index == state.books.length - 1
                          ? kHorizontalPadding
                          : 0,
                    ),
                    child: CustomBookImage(
                      imageUrl: state
                              .books[index].volumeInfo!.imageLinks!.thumbnail ??
                          noImageUrl,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeaturedBookFailureState) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
