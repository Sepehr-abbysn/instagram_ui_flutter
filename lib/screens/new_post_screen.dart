import 'package:flutter/material.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: _getHeaderBox(),
                ),
                SliverToBoxAdapter(
                  child: _getSelectedImageContainer(),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                  sliver: _getGridItem(),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(top: 120),
                ),
              ],
            ),
            _getFooterBox(),
          ],
        ),
      ),
    );
  }

  Widget _getHeaderBox() {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 17,
            ),
            child: Text(
              "Post",
              style: TextStyle(
                  fontFamily: "GB", fontSize: 16, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Image.asset(
              "images/icon_arrow_down.png",
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              right: 15,
            ),
            child: Text(
              "Next",
              style: TextStyle(
                  fontFamily: "GB", fontSize: 16, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Image.asset(
              "images/icon_arrow_right_box.png",
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSelectedImageContainer() {
    return Container(
      padding: EdgeInsets.only(left: 17, right: 17, top: 30, bottom: 5),
      width: double.infinity,
      height: 375,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset("images/item9.png"),
        ),
      ),
    );
  }

  Widget _getGridItem() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("images/item$index.png"),
              ),
            ),
          );
        },
        childCount: 10,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 110,
      ),
    );
  }

  Widget _getFooterBox() {
    return Container(
      width: double.infinity,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Draft",
              style: TextStyle(
                color: Color(0xffF35383),
                fontFamily: "GB",
                fontSize: 16,
              ),
            ),
            Text(
              "Gallery",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "GB",
                fontSize: 16,
              ),
            ),
            Text(
              "Take",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "GB",
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Color(0xff272B40),
      ),
    );
  }
}
