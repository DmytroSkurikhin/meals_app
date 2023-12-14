import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExpImage extends StatelessWidget {
  final images = [
    'https://i.pinimg.com/564x/b2/fd/d1/b2fdd181a1f7584d39bb1d9a40fc7650.jpg',
    'https://www.successful-city.com/wp-content/uploads/2018/11/tttt.jpg',
    'https://farm4.static.flickr.com/3770/11025255593_596690e42d.jpg',
  ];

  ExpImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 400,
          viewportFraction: 1,
          autoPlay: false,
        ),
        itemCount: images.length,
        itemBuilder: (context, index, realIndex) {
          final image = images[index];
          return buildImage(image, index);
        },
      ),
    );
  }

  Widget buildImage(String image, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        color: Colors.grey,
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      );
}
