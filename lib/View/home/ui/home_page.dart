import 'package:demotask/View/home/bloc/home_bloc.dart';
import 'package:demotask/config/appColors.dart';
import 'package:demotask/config/appImages.dart';
import 'package:demotask/config/textStyle.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  void initState() {
    homeBloc.add(HomeInitialFetchEvent());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  "Categories",
                  style: AppTextStyle.regular.copyWith(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                      child: Container(
                        height: 70,
                        width: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Icon(Icons.safety_divider),
                      ),
                    ),
                    Text(
                      "Anisity",
                      style: AppTextStyle.regular,
                    ),
                    Text(
                      "Anisity",
                      style: AppTextStyle.regular.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  "Top Picks",
                  style: AppTextStyle.regular.copyWith(fontSize: 16),
                ),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 30, top: 10, bottom: 10),
                        child: Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Test - 8 min",
                            style: AppTextStyle.regular.copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Personality Test",
                            style: AppTextStyle.medium.copyWith(fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Discover your unique characteristics & understand yourself better",
                            style: AppTextStyle.regular.copyWith(fontSize: 12),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  "Recently Taken",
                  style: AppTextStyle.regular.copyWith(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                      child: Container(
                        padding: EdgeInsets.all(2),
                        height: 70,
                        width: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(color: Colors.grey), color: Colors.red),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(AppImages.one),
                        ),
                      ),
                    ),
                    Text(
                      "Anisity",
                      style: AppTextStyle.regular.copyWith(fontSize: 10),
                    ),
                    Text("Anisity", style: AppTextStyle.regular),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 15,
                      width: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Color(0xff0831d5)),
                      child: Text(
                        "Results",
                        style: AppTextStyle.medium.copyWith(color: AppColors.whiteColor, fontSize: 8, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// BlocConsumer(
// listener: (_, state) {},
// bloc: homeBloc,
// builder: (context, state) {
// switch (state.runtimeType) {
// case const (HomeLoadingState):
// return const Center(
// child: CircularProgressIndicator(),
// );
// case const (HomeSuccessState):
// final successState = state as HomeSuccessState;
//
// return ListView.builder(
// itemCount: successState.data.length,
// itemBuilder: (context, index) {
// return Container(
// color: Colors.grey.shade200,
// padding: const EdgeInsets.all(16),
// margin: const EdgeInsets.all(16),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(successState.data[index]["id"].toString()),
// Text(successState.data[index]["title"].toString()),
// Text(
// successState.data[index]["body"].toString(),
// )
// ],
// ),
// );
// },
// );
// default:
// return const SizedBox();
// }
// }
//
// // This trailing comma makes auto-formatting nicer for build methods.
// )
