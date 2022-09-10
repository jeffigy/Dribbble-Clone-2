import 'package:flutter/material.dart';
import 'package:nft_ui/components/nft_card.dart';

class TopTab extends StatefulWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  State<TopTab> createState() => _TopTabState();
}

class _TopTabState extends State<TopTab> {
  @override
  Widget build(BuildContext context) {
    return NftCard(imagePath: 'lib/assets/apiens_2.png');;
  }
}
