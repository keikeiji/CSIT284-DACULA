
import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCategory,
  });

  final Category category;
  final void Function() onSelectCategory;

  String get imageUrl {
    switch (category.id) {
      case 'c1':
        return 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/960px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg';
      case 'c2':
        return 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg';
      case 'c3':
        return 'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg';
      case 'c4':
        return 'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg';
      case 'c5':
        return 'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg';
      case 'c6':
        return 'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg';
      case 'c7':
        return 'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg';
      case 'c8':
        return 'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg';
      case 'c9':
        return 'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg';
      case 'c10':
        return 'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: const Color(0xFFFFFDF8),
        child: InkWell(
          onTap: onSelectCategory,
          child: Stack(
            fit: StackFit.expand,
            children: [
              if (imageUrl.isNotEmpty)
                Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFE1DAC9),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.restaurant,
                        size: 40,
                        color: Color(0xFF4F6B3A),
                      ),
                    );
                  },
                )
              else
                Container(
                  color: const Color(0xFFE1DAC9),
                ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      const Color(0xFF22271C).withValues(alpha: 0.82),
                    ],
                    stops: const [0.25, 1.0],
                  ),
                ),
              ),
              Positioned(
                left: 14,
                right: 10,
                bottom: 14,
                child: Text(
                  category.title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          const Shadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFDF8).withValues(alpha: 0.92),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.arrow_outward,
                    size: 16,
                    color: Color(0xFF4F6B3A),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}