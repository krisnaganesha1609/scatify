import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Logo Image Widgets
Widget logoImage() {
  return const ClipRRect(
    child: Image(image: CachedNetworkImageProvider('')),
  );
}
