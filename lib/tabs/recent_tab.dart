import 'package:flutter/material.dart';
import 'package:nft_ui/components/nft_card.dart';

class RecentTab extends StatefulWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  State<RecentTab> createState() => _RecentTabState();
}

class _RecentTabState extends State<RecentTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NftCard( imagePath: 'lib/assets/apiens_1.png',),
    );
  }
}
