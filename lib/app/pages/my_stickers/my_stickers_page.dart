import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/pages/my_stickers/components/sticker_group_filter.dart';

import 'components/sticker_group.dart';
import 'components/sticker_status_filter.dart';

class MyStickersPage extends StatelessWidget {
  const MyStickersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                StickerStatusFilter(filterSelected: ''),
                StickerGroupFilter(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const StickerGroup(),
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
