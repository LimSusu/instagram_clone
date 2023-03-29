import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostBottom extends StatelessWidget {
  final int likeCount;
  final String username;
  final String content;
  final int commentCount;
  final String imageUrl;
  final DateTime createdAt;

  const PostBottom({
    Key? key,
    required this.likeCount,
    required this.username,
    required this.content,
    required this.commentCount,
    required this.imageUrl,
    required this.createdAt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
            left: 12,
            right: 13,
          ),
          height: 44,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/icons/like.svg'),
                  const SizedBox(width: 12),
                  SvgPicture.asset('assets/icons/comment.svg'),
                  const SizedBox(width: 12),
                  SvgPicture.asset('assets/icons/share.svg'),
                ],
              ),
              SvgPicture.asset('assets/icons/bookmark.svg'),
            ],
          ),
        ),
        _CenterPart(
          likeCount: likeCount,
          username: username,
          content: content,
          commentCount: commentCount,
          imageUrl: imageUrl,
          createdAt: createdAt,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class _CenterPart extends StatelessWidget {
  const _CenterPart({
    required this.likeCount,
    required this.username,
    required this.content,
    required this.commentCount,
    required this.imageUrl,
    required this.createdAt,
  });

  final int likeCount;
  final String username;
  final String content;
  final int commentCount;
  final String imageUrl;
  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$likeCount Likes',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          _buildPostContent(),
          const SizedBox(height: 6),
          Text(
            'View all $commentCount comments',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0xFF6e6e6e),
            ),
          ),
          const SizedBox(height: 6),
          _buildAddComment(),
          const SizedBox(height: 6),
          Text(
            '${createdAt.hour}:${createdAt.minute} created',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }

  Row _buildAddComment() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 7),
          child: Row(
            children: [
              CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(width: 8),
              const Text(
                'Add a comment...',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF6e6e6e),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            children: const [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              SizedBox(width: 14),
              Icon(
                Icons.handshake,
                color: Colors.yellow,
              ),
              SizedBox(width: 14),
              Icon(
                Icons.add_circle_outline,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Text _buildPostContent() {
    return Text.rich(
      TextSpan(
        text: username,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        children: const [
          TextSpan(
            text:
                ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
