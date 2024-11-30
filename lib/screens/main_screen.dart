import 'package:bloc_pattern/bloc/Bloc.dart';
import 'package:bloc_pattern/bloc/event.dart';
import 'package:bloc_pattern/bloc/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class main_screen extends StatelessWidget {
  const main_screen({super.key});

  @override
  Widget build(BuildContext context) {
  return SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(width: double.infinity),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    BlocBuilder<userbloc, Userstate>(
                      builder: (context, state) => ListView.builder(
                        itemCount: state.users.length,
                        itemBuilder: (context, index) => Text(
                          state.users[index],
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      right: 20,
                      child: CircleAvatar(
                        radius: 38,
                        child: IconButton(
                          onPressed: () {
                            BlocProvider.of<userbloc>(context).add(
                              Adduser('sina'),
                            );
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
