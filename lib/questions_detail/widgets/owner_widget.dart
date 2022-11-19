import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OwnerWidget extends    StatelessWidget {
  const OwnerWidget({Key? key,  this.image,  this.name,  this.reputation}) : super(key: key);

  final String? image, name;
  final int? reputation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           CachedNetworkImage(

              imageUrl: image??"",
              imageBuilder: (context, imageProvider) => Container(
                width: 60.0,
                height: 60,
                decoration: BoxDecoration(
                  shape:BoxShape.circle ,
                  image: DecorationImage(
                      image: imageProvider, fit: BoxFit.cover),
                ),
              ),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.person),
            ),

          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name??"",
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox( height:5),
              Row(
                children: [
                  Text(
                    reputation.toString(),
                    style: const TextStyle(
                        color: Colors.brown,
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(width: 3,),
                  const Icon(
                    Icons.star,
                    color: Colors.brown,
                    size: 16,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
