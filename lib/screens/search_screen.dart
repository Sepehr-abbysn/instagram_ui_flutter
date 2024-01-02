import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getSearchBox(),
            ),
            SliverToBoxAdapter(
              child: _getCategoryList(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              sliver: _getSliverGrid(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getSliverGrid() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
          (context, index) => Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset("images/item$index.png"),
                  ),
                ),
              ),
          childCount: 10),
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
      ),
    );
  }

  Widget _getCategoryList() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 23,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Color(0xff272B40),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                child: Text(
                  "sepehr abbasiyan $index",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontFamily: "GM", fontSize: 14),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _getSearchBox() {
    return Container(
      height: 46,
      margin: EdgeInsets.only(top: 20, left: 18, right: 18),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Image.asset("images/icon_search.png"),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: "GB",
                      fontSize: 15,
                    ),
                    hintText: "Search...",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(width: 15),
            Image.asset("images/icon_scan.png"),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xff272B40),
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
      ),
    );
  }
}
