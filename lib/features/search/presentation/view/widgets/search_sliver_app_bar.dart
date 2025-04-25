
import 'package:flutter/material.dart';

class SearchSliverAppBar extends StatelessWidget {
  const SearchSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text("Search"),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      floating: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
