import 'package:clothesshop/features/products/domain/entity/product.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class ImageSliderWidget extends StatelessWidget {
  const ImageSliderWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return FanCarouselImageSlider.sliderType1(
      sliderHeight: 250,
      autoPlay: false,
      indicatorActiveColor: Colors.blue,
      indicatorDeactiveColor: Colors.grey,
      imagesLink: product.images,
      isAssets: true,
      imageFitMode: BoxFit.contain,
      currentItemShadow: const [
        BoxShadow(
          color: Colors.transparent,
          blurRadius: 10,
        ),
      ],
    );
  }
}
