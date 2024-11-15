import 'package:demotask/View/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Demo"),
      ),
      body: BlocConsumer(
          listener: (_, state) {},
          bloc: homeBloc,
          builder: (context, state) {
            switch (state.runtimeType) {
              case const (HomeLoadingState):
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case const (HomeSuccessState):
                final successState = state as HomeSuccessState;

                return ListView.builder(
                  itemCount: successState.data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.grey.shade200,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(successState.data[index]["id"].toString()),
                          Text(successState.data[index]["title"].toString()),
                          Text(
                            successState.data[index]["body"].toString(),
                          )
                        ],
                      ),
                    );
                  },
                );
              default:
                return const SizedBox();
            }
          }

          // This trailing comma makes auto-formatting nicer for build methods.
          ),
    );
  }
}
