import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalPadding,
      ),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Expanded(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: width * 0.18,
                      left: width * 0.18,
                      top: 30,
                    ),
                    child: const CustomBookImage(),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 43,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'The Jungle Book',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 6,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard Kipling',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 37,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: BooksAction(),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Expanded(
                        child: SizedBox(
                          height: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'You can also like',
                          style: Styles.textStyle14.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SimilarBooksListView(),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
