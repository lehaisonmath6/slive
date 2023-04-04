import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SimilarSearchContent extends StatelessWidget {
  const SimilarSearchContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.withOpacity(0.5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Text(
            "Tìm kiếm * nhóm trộm mộ suýt mất mạng phim",
            style: TextStyle(color: Colors.grey),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
