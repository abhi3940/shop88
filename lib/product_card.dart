import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String image;

  const ProductCard({
    Key? key,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(255, 138, 196, 0.1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              image,
              height: 100,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.titleLarge),
              Text(
                '\$${price}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
