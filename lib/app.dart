import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DApps"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.min,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    label: Text("Private Key"),
                  ),
                ),
                const Divider(
                  height: 16,
                  color: Colors.transparent,
                ),
                const TextField(
                  decoration: InputDecoration(
                    label: Text("Private Key"),
                  ),
                ),
                const Divider(
                  height: 16,
                  color: Colors.transparent,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Private Key"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
