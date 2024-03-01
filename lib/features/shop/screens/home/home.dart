import 'package:ego_supermart/common/product_cards/product_cards_vertical.dart';
import 'package:flutter/material.dart';

import '../../../../components/containers/primary_header_container.dart';
import '../../../../components/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/sales_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  const MHomeAppBar(),
                  const SizedBox(
                    height: 32.0,
                  ),

                  //SearchBar
                  const MSearchContainer(
                    text: 'Search in Store',
                    showBorder: false,
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),

                  //Categories
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: [
                        //Heading
                        MSectionHeading(
                          title: 'Popular Products',
                          onPressed: () {},
                          // showActionButton: false,
                          textButtonColor: Colors.black,
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),

                        //Categories
                        const MHomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  )
                ],
              ),
            ),

            //body
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //sales slider
                    const MSalesSlider(),
                    const SizedBox(
                      height: 16.0,
                    ),

                    // product Card
                    MGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const MProductCardVertical(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
