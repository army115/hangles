import 'package:flutter/material.dart';
import 'package:paginated_search_bar/paginated_search_bar.dart';
import 'package:endless/endless.dart';

class ExampleItem {
  final String title;

  ExampleItem({
    required this.title,
  });
}

class ExampleItemPager {
  int pageIndex = 0;
  final int pageSize;

  ExampleItemPager({
    this.pageSize = 20,
  });

  List<ExampleItem> nextBatch() {
    List<ExampleItem> batch = [];

    for (int i = 0; i < pageSize; i++) {
      batch.add(ExampleItem(title: 'Item ${pageIndex * pageSize + i}'));
    }

    pageIndex += 1;

    return batch;
  }
}

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    ExampleItemPager pager = ExampleItemPager();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            alignment: Alignment.topCenter,
            child: PaginatedSearchBar<ExampleItem>(
              maxHeight: 600,
              hintText: 'Search',
              emptyBuilder: (context) {
                return const Text("I'm an empty state!");
              },
              // placeholderBuilder: (context) {
              //   return const Text("I'm a placeholder state!");
              // },
              paginationDelegate: EndlessPaginationDelegate(
                pageSize: 20,
                maxPages: 1,
              ),
              onSearch: ({
                required pageIndex,
                required pageSize,
                required searchQuery,
              }) async {
                return Future.delayed(const Duration(milliseconds: 1300), () {
                  if (searchQuery == "empty") {
                    return [];
                  }

                  if (pageIndex == 0) {
                    pager = ExampleItemPager();
                  }

                  return pager.nextBatch();
                });
              },
              itemBuilder: (
                context, {
                required item,
                required index,
              }) {
                return Text(item.title);
              },
            ),
          ),
        ],
      ),
    );
  }
}
