import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../unit/app_color.dart';
import '../unit/app_text_style.dart';

class WidgetViewImages extends StatefulWidget {
  final String title;
  final List<String> imagesUrl;

  const WidgetViewImages({super.key, required this.imagesUrl, required this.title});

  @override
  State<WidgetViewImages> createState() => _WidgetViewImagesState();
}

class _WidgetViewImagesState extends State<WidgetViewImages> {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(widget.title, style: AppTextStyle.style16B)),
      body: Container(
        color: AppColor.black,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: controller,
              itemCount: widget.imagesUrl.length,
              itemBuilder: (context, index) {
                return PhotoView(
                  imageProvider: NetworkImage(widget.imagesUrl[index]),
                  minScale: PhotoViewComputedScale.contained * 0.8,
                  maxScale: PhotoViewComputedScale.covered * 2.0,
                  initialScale: PhotoViewComputedScale.contained,
                );
              },
            ),
            Positioned(
              bottom: 30,
              child: SafeArea(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: widget.imagesUrl.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: AppColor.white,
                    dotColor: Colors.grey,
                    dotHeight: 10,
                    dotWidth: 10,
                    expansionFactor: 3,
                    spacing: 6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
