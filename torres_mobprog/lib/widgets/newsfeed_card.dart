
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';
import 'post_action_button.dart';

class NewsFeedCard extends StatefulWidget {
  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasImage;
  final String? userAvatar;
  final String? postImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.numOfLikes,
    required this.date,
    this.hasImage = false,
    this.userAvatar,
    this.postImage,

  });

  @override
  State<NewsFeedCard> createState() => _NewsFeedCardState();
}

class _NewsFeedCardState extends State<NewsFeedCard> {
  late int likes;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    likes = widget.numOfLikes;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 8.h,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: FB_LIGHT_PRIMARY,
                  backgroundImage: widget.userAvatar != null
                      ? AssetImage(widget.userAvatar!)
                      : null,
                  child: widget.userAvatar == null
                      ? Icon(Icons.person, color: FB_DARK_PRIMARY)
                      : null,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: widget.userName,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Text(
                        widget.date,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: 12.h),
            CustomText(
              text: widget.postContent,
              fontSize: 14.sp,
              color: Colors.black,
            ),

            if (widget.hasImage && widget.postImage != null) ...[
              SizedBox(height: 12.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  widget.postImage!,
                  width: double.infinity,
                  height: 200.h,
                  fit: BoxFit.cover,
                ),
              ),
            ],

            SizedBox(height: 12.h),
            Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  color: FB_PRIMARY,
                  size: 18.sp,
                ),
                SizedBox(width: 6.w),
                Text('$likes'),
              ],
            ),
            Divider(),
           Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    // LIKE BUTTON WIDGET
    PostActionButton(
      icon: isLiked
          ? Icons.thumb_up
          : Icons.thumb_up_outlined,
      label: 'Like',
      iconColor: isLiked ? FB_PRIMARY : Colors.grey,
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
          likes += isLiked ? 1 : -1;
        });
      },
    ),

    // COMMENT BUTTON WIDGET
    PostActionButton(
      icon: Icons.comment_outlined,
      label: 'Comment',
      iconColor: Colors.grey,
      onPressed: () {},
    ),

    // SHARE BUTTON
    TextButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.share_outlined,
        color: Colors.grey,
      ),
      label: Text('Share'),
    ),
  ],
),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Row(
                children: [
                  Icon(Icons.person, color: Colors.grey),
                  SizedBox(width: 10.w),
                  Text(
                    'Write a comment...',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'View comments',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
