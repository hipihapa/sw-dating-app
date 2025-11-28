import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRefreshControl extends StatelessWidget {
  final Future<void> Function() onRefresh;

  const CustomRefreshControl({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverRefreshControl(
      onRefresh: onRefresh,
      builder:
          (
            context,
            refreshState,
            pulledExtent,
            refreshTriggerPullDistance,
            refreshIndicatorExtent,
          ) {
            final double progress = (pulledExtent / refreshTriggerPullDistance)
                .clamp(0.0, 1.0);

            return Center(
              child: refreshState == RefreshIndicatorMode.drag
                  ? CupertinoActivityIndicator.partiallyRevealed(
                      radius: 14,
                      progress: progress,
                      color: Colors.white,
                    )
                  : const CupertinoActivityIndicator(
                      radius: 14,
                      color: Colors.white,
                    ),
            );
          },
    );
  }
}
