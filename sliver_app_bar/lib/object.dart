import './text.dart';
import './image.dart';
import 'package:flutter/material.dart';

class ObjectWindow extends StatelessWidget {
  const ObjectWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KharkivHeritage'),
      ),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Каплуновська церква'),
              background: ExpImage(),
            ),
            floating: true,
            snap: true,
            pinned: true,
          ),
        ],
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Descrip(),
        ),
      ),
    );
  }
}
