import 'package:flutter/material.dart';
import 'package:defood/defood_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 450,
          width: 350,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Recipe Trends',
                    style: DefoodTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: [
                  Chip(
                    label: Text(
                      'Healthy',
                      style: DefoodTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Carrots',
                      style: DefoodTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Vegan',
                      style: DefoodTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Delete');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
