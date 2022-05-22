import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: movie.posterUrl(),
      fit: BoxFit.cover,
      //height: 200,
      // width: double.infinity,
      // placeholder: (context, url) => const Center(
      //   child: CircularProgressIndicator(),
      // ),
      errorWidget: (context, url, error) => const Icon(Icons.error),

    );  
  }
}
