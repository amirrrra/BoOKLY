import 'package:bookly/core/utils/color_palette.dart';
import 'package:bookly/features/search/presentation/view%20models/search%20cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTextfieldWidget extends StatelessWidget {
  const SearchTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();

    return SizedBox(
      height: 35,
      child: TextFormField(
        onFieldSubmitted: (query) {
          BlocProvider.of<SearchCubit>(context).fetchRelevantBooks(
            category: query,
          );
        },
        autofocus: true,
        cursorColor: ColorPalette.kBabyBlack,
        cursorHeight: 22,
        cursorWidth: 1,
        focusNode: focusNode,
        onTapOutside: (event) => focusNode.unfocus(),
        style: const TextStyle(
          height: 1.4,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          fillColor: ColorPalette.kGreyE8,
          filled: true,
          hintText: 'Search Books',
          hintStyle: const TextStyle(
            color: ColorPalette.kGrey7,
            fontSize: 15,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
        ),
      ),
    );
  }

  final outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: ColorPalette.kTransparent),
    borderRadius: BorderRadius.all(Radius.circular(16)),
  );
}
