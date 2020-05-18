import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

import '../../common/app_shell.dart';
import '../../common/button.dart';

class AnimatedBasicExample extends StatelessWidget {
  const AnimatedBasicExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlobController blobCtrl = BlobController();
    return AppShell(
      title: 'Animated Basic',
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Blob.animatedRandom(
                size: 400,
                controller: blobCtrl,
              ),
            ),
            Button('Randomize', onTap: () {
              BlobData foo = blobCtrl.change();
              print(foo.svgPath);
            })
          ],
        ),
      ),
    );
  }
}