import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/share_bottomsheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: _getAppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    barrierColor: Colors.transparent,
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: DraggableScrollableSheet(
                          initialChildSize: 0.5,
                          minChildSize: 0.2,
                          maxChildSize: 0.7,
                          builder: (context, scrollController) =>
                              ShareBottomSheet(
                            scController: scrollController,
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text("Open Bottomsheet"),
              ),
            ),
            SliverToBoxAdapter(
              child: _getStoriesList(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: [
                    SizedBox(height: 10),
                    _getHeaderPost(),
                    SizedBox(height: 30),
                    _getPostsContent(context),
                    SizedBox(height: 14),
                  ],
                ),
                childCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _getAppBar() {
    return AppBar(
      backgroundColor: Color(0xff1C1F2E),
      elevation: 0,
      title: Container(
        width: 128,
        height: 24,
        child: Image.asset("images/moodinger_logo.png"),
      ),
      actions: [
        Container(
          width: 24,
          height: 24,
          child: Image.asset("images/icon_direct.png"),
          margin: EdgeInsets.only(right: 17),
        ),
      ],
    );
  }

  Widget _getStoriesList() {
    return Container(
      height: 120,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            index == 0 ? _getAddStory() : _getStoryListBox(),
      ),
    );
  }

  Widget _getPostsList() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => Column(
        children: [
          SizedBox(height: 10),
          _getHeaderPost(),
          SizedBox(height: 30),
          _getPostsContent(context),
          SizedBox(height: 14),
        ],
      ),
    );
  }

  Widget _getPostsContent(BuildContext context) {
    return Container(
      width: 394,
      height: 440,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("images/post_cover.png"),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset("images/icon_video.png"),
          ),
          Positioned(
            bottom: 15,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  width: 340,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 255, 255, 0.2),
                      ],
                    ),
                  ),
                  child: _getPostsBottomBar(context),
                ),
              ),
            ),
          )
        ],
      ),
    );
  } //build

  Widget _getPostsBottomBar(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Image.asset('images/icon_hart.png'),
            SizedBox(
              width: 6,
            ),
            Text(
              '2.5 k',
              style: TextStyle(
                  fontFamily: 'GB', fontSize: 14, color: Colors.white),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        Row(
          children: [
            Image.asset('images/icon_comments.png'),
            SizedBox(
              width: 6,
            ),
            Text(
              '1.5 k',
              style: TextStyle(
                  fontFamily: 'GB', fontSize: 14, color: Colors.white),
            )
          ],
        ),
        SizedBox(
          width: 42,
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              barrierColor: Colors.transparent,
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: DraggableScrollableSheet(
                    initialChildSize: 0.5,
                    minChildSize: 0.2,
                    maxChildSize: 0.7,
                    builder: (context, scrollController) => ShareBottomSheet(
                      scController: scrollController,
                    ),
                  ),
                );
              },
            );
          },
          child: Image.asset(
            'images/icon_share.png',
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Image.asset('images/icon_save.png'),
      ],
    );
  }

  Widget _getHeaderPost() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          _getStoryBox(),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'amirhamadadibii',
                  style: TextStyle(
                      fontFamily: 'GB', color: Colors.white, fontSize: 12),
                ),
                Text(
                  'امیراحمدادیبی برنامه‌نویس موبایل',
                  style: TextStyle(color: Colors.white, fontFamily: 'SM'),
                )
              ],
            ),
          ),
          Spacer(),
          Image.asset('images/icon_menu.png')
        ],
      ),
    );
  }

  Widget _getStoryBox() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(17),
      padding: EdgeInsets.all(4),
      color: Color(0xffF35383),
      dashPattern: [40, 10],
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: 38,
          width: 38,
          child: Image.asset('images/profile.png'),
        ),
      ),
    );
  }

  Widget _getStoryListBox() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(17),
            padding: EdgeInsets.all(4),
            color: Color(0xffF35383),
            dashPattern: [40, 10],
            strokeWidth: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Container(
                height: 58,
                width: 58,
                child: Image.asset('images/profile.png'),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "test",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _getAddStory() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff1C1F2E),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset("images/icon_plus.png"),
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Your Story",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
