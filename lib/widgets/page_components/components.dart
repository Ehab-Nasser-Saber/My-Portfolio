import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/page_components/page_components.dart';

import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../core/providers/scroll_provider.dart';

class Components extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ScrollablePositionedList.builder(
      padding: EdgeInsets.zero,
      itemCount: PageComponents.views.length,
      itemBuilder: (context, index) => PageComponents.views[index],
      itemScrollController: scrollProvider.itemScrollController,
    );
  }
}
