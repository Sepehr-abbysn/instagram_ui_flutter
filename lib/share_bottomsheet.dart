import 'dart:ui';

import 'package:flutter/material.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({Key? key, this.scController}) : super(key: key);
  final ScrollController? scController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
        child: _getBottoomSheetContainer(),
      ),
    );
  }

  Widget _getBottoomSheetContainer() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 44,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(255, 255, 255, 0.5),
            Color.fromRGBO(255, 255, 255, 0.2),
          ],
        ),
      ),
      child: _getContent(),
    );
  } //BUIULD

  Widget _getContent() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          controller: scController,
          slivers: [
            _shareAndSearchSliver(),
            _gridSliver(),
            SliverPadding(
              padding: EdgeInsets.only(top: 100),
            ),
          ],
        ),
        _getSendButton(),
      ],
    );
  }

  Widget _getSendButton() {
    return Positioned(
      bottom: 40,
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 13),
          child: Text(
            "Send",
            style:
                TextStyle(color: Colors.white, fontFamily: "GB", fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget _gridSliver() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) => _getGridItem(),
          childCount: 30),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          mainAxisExtent: 110),
    );
  }

  Widget _shareAndSearchSliver() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 22),
            width: 67,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Share",
                style: TextStyle(
                    color: Colors.white, fontFamily: "GB", fontSize: 20),
              ),
              Image.asset("images/icon_share_bottomsheet.png"),
            ],
          ),
          SizedBox(height: 32),
          _searchTextField(),
          SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _searchTextField() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Image.asset("images/icon_search.png"),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search User",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
      width: 340,
      height: 46,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.4),
        borderRadius: BorderRadius.all(
          Radius.circular(13),
        ),
      ),
    );
  }

  Widget _getGridItem() {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            child: Image.asset("images/profile.png"),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Amirahmad Adibi",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "GB",
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
