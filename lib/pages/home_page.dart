import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../styles/theme_data_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    // Determine the AppBar title based on the current theme
    String appBarTitle = themeProvider.themeDataStyle == ThemeDataStyle.dark
        ? 'Dark Mode'
        : 'Light Mode';

    return Scaffold(
      // Use extendBodyBehindAppBar to allow the body to be behind the AppBar
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 56.0),
        // Standard AppBar height
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25), // Blur effect
            child: AppBar(
              elevation: 0.0,
              // Remove the shadow
              backgroundColor: Colors.black.withOpacity(0.2),
              // Semi-transparent background
              title: Text(appBarTitle),
              // Dynamically set the title based on the theme
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Switch(
                    activeColor: Colors.deepPurple.shade500,
                    activeTrackColor: Colors.white,
                    value: themeProvider.themeDataStyle == ThemeDataStyle.dark,
                    onChanged: (isOn) {
                      themeProvider
                          .changeTheme(); // Toggle theme when switch is changed
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        // Using ListView to make content scrollable
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // First Container
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 100.0,
                  child: const Center(
                    child: Text('Content'),
                  ),
                ),
              ),
              //const SizedBox(height: 10.0),

              // First Row
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 100.0,
                          child: const Center(
                            child: Text('Content'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 100.0,
                          child: const Center(
                            child: Text('Content'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //const SizedBox(height: 10.0),

              // Second Container
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 150.0, // Increased height for better visibility
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          themeProvider.themeDataStyle == ThemeDataStyle.dark
                              ? 'Dark Theme'
                              : 'Light Theme',
                          style: const TextStyle(fontSize: 25.0),
                        ),
                        //const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ),
              ),
              //const SizedBox(height: 10.0),

              // Second Row
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 100.0,
                        child: const Center(
                          child: Text('Content'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 100.0,
                        child: const Center(
                          child: Text('Content'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //const SizedBox(height: 10.0),

              // Third Row (Extra row 1)
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 100.0,
                        child: const Center(
                          child: Text('Extra Content 1'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 100.0,
                        child: const Center(
                          child: Text('Extra Content 2'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //const SizedBox(height: 10.0),

              // Fourth Row (Extra row 2)
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 100.0,
                        child: const Center(
                          child: Text('Extra Content 3'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 100.0,
                        child: const Center(
                          child: Text('Extra Content 4'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //const SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 100.0,
                  child: const Center(
                    child: Text('Content'),
                  ),
                ),
              ),
              //const SizedBox(height: 10.0),

              // First Row
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 100.0,
                        child: const Center(
                          child: Text('Content'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        height: 100.0,
                        child: const Center(
                          child: Text('Content'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
