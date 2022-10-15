import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constance.dart';
import '../core/view_model/home_view_model.dart';
import '../widgets/custom_text.dart';

class HomePage extends StatelessWidget {
  List<String> names = <String>['Men', 'Women', 'Devices', 'Gadgets', 'Gaming'];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Column(children: [
            _searchTextFormField(),
            const SizedBox(
              height: 25,
            ),
            const CustomText(
              text: 'Categories',
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            _listViewCategory(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  text: 'Best Selling',
                  fontWeight: FontWeight.w600,
                ),
                CustomText(
                  text: 'See all >',
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            _listViewProducts(),
          ]),
        ),
      ),
    );
  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _listViewCategory() {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade100),
                  child: Image.asset('assets/images/icon_men.png')),
              const SizedBox(height: 15),
              CustomText(
                text: names[index],
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 20),
      ),
    );
  }

  Widget _listViewProducts() {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade100),
                width: MediaQuery.of(context).size.width * .4,
                child: Column(
                  children: [
                    SizedBox(
                        height: 200,
                        child: Image.asset('assets/images/image.png'))
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const CustomText(
                text: "BeoPlay Speaker",
                fontSize: 16,
                alignment: Alignment.bottomLeft,
              ),
              CustomText(
                text: "Bang and Olfen",
                fontSize: 12,
                color: Colors.grey.shade600,
                alignment: Alignment.bottomLeft,
              ),
              const CustomText(
                text: "\$700",
                fontSize: 14,
                alignment: Alignment.bottomLeft,
                color: primaryColor,
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 20),
      ),
    );
  }

  bottomNavigationBar() {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller)=>
            BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  activeIcon: const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text('Explore'),
                  ),
                  label: '',
                  icon: Image.asset(
                    'assets/images/icon_explore.png',
                    fit: BoxFit.contain,
                    width: 20.0,
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text('Cart'),
                  ),
                  label: '',
                  icon: Image.asset(
                    'assets/images/icon_cart.png',
                    fit: BoxFit.contain,
                    width: 20.0,
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text('account'),
                  ),
                  label: '',
                  icon: Image.asset(
                    'assets/images/icon_user.png',
                    fit: BoxFit.contain,
                    width: 20.0,
                  ),
                ),
              ],
              currentIndex: controller.navigatorValue,
              onTap: (index) =>controller.changeSelectedValue(index),
              elevation: 0,
              selectedItemColor: Colors.black,
              backgroundColor: Colors.grey.shade50,
            )
    );
  }
}
