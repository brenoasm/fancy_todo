import 'package:fancy_todo/ui/routes.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final _itemCount = 7;

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.todo);
          },
          child: Icon(Icons.add),
        ),
        body: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.only(
            top: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MainTitle(
                              text: 'What\'up, Joy!',
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 40,
                              ),
                              child: SectionTitle(
                                text: 'Categories',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 24,
                        ),
                        height: 130,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _itemCount,
                          padding: EdgeInsets.symmetric(
                            horizontal: 32,
                          ),
                          itemBuilder: (context, index) {
                            return CategoryCard(
                              isTheFirst: index == 0,
                              isTheLast: index == (_itemCount - 1),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 40,
                                  bottom: 24,
                                  left: 8,
                                  right: 8,
                                ),
                                child: SectionTitle(
                                  text: 'Today\'s tasks',
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: _itemCount,
                                  itemBuilder: (context, index) {
                                    return TaskItem(
                                      isTheFirst: index == 0,
                                      isTheLast: index == (_itemCount - 1),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
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
