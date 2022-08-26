import 'package:amr_app/views/categories/categories_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/navigation_bar_cubit/navigation_bar_cubit.dart';
import '../src/app_color.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationBarCubit,NavigationBarState>(
      listener: (context, state) {
      },
      builder: (context,state){
        var navigationBarCubit=NavigationBarCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.KPrimaryColor,
            elevation: 1.0,
            title :  Row(
              children: [
                Image.asset('assets/images/amr_face.png',
                  height: 80,
                  width: 150,
                ),
                const Text("Amr App "),
              ],
            ),
            actions: [
              IconButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoriesView()),);}, icon: Icon(Icons.category,size: 25.0,color: AppColors.KPrimaryColor,)),
            ],
          ),
          body:navigationBarCubit.views.elementAt(navigationBarCubit.currentIndex) ,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navigationBarCubit.currentIndex,
            onTap: (index){
              navigationBarCubit.ChangeIndex(index,context);
            },
            selectedItemColor: AppColors.KPrimaryColor,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: AppColors.KPrimaryColor),
                  label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.add_to_photos_sharp,color: AppColors.KPrimaryColor),
                  label: 'Order'),
              BottomNavigationBarItem(icon: Icon(Icons.person_pin,color: AppColors.KPrimaryColor)
                  ,label: 'Check'),

            ],
          ),
        ) ;
      },
    );
  }
}
