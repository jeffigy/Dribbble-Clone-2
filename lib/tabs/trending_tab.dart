import 'package:flutter/material.dart';
import 'package:nft_ui/components/nft_card.dart';

class TrendingTab extends StatefulWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  State<TrendingTab> createState() => _TrendingTabState();
}

class _TrendingTabState extends State<TrendingTab> {
  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: 'lib/assets/apiens_3.png');;
  }
}
