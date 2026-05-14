import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    var text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("Today"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/More.svg', width: 24),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(0),
                elevation: 0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(
                      16,
                    ).copyWith(bottom: 0, right: 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isChecked
                                    ? colors.primary
                                    : const Color.fromARGB(51, 0, 0, 0),
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                              color: isChecked
                                  ? colors.primary
                                  : Colors.transparent,
                            ),
                            child: isChecked
                                ? const Icon(
                                    Icons.check,
                                    size: 18,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),

                        const SizedBox(width: 16),

                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Start making a presentation",
                                          style: text.bodyMedium?.copyWith(
                                            color: Color.fromARGB(
                                              isChecked ? 127 : 255,
                                              0,
                                              0,
                                              0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 97, 222, 164),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                ],
                              ),
                              const SizedBox(height: 18),

                              const Divider(
                                color: Color.fromARGB(25, 37, 42, 49),
                                thickness: 1,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(0),
                elevation: 0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(
                      16,
                    ).copyWith(bottom: 0, right: 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isChecked
                                    ? colors.primary
                                    : const Color.fromARGB(51, 0, 0, 0),
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                              color: isChecked
                                  ? colors.primary
                                  : Colors.transparent,
                            ),
                            child: isChecked
                                ? const Icon(
                                    Icons.check,
                                    size: 18,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                        ),

                        const SizedBox(width: 16),

                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Pay for rent",
                                          style: text.bodyMedium?.copyWith(
                                            color: Color.fromARGB(
                                              isChecked ? 127 : 255,
                                              0,
                                              0,
                                              0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/Alarm.svg",
                                              width: 16,
                                              colorFilter: ColorFilter.mode(
                                                Color.fromARGB(
                                                  isChecked ? 38 : 51,
                                                  0,
                                                  0,
                                                  0,
                                                ),
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            Text(
                                              "7:00 pm",
                                              style: text.bodySmall?.copyWith(
                                                color: Color.fromARGB(
                                                  isChecked ? 38 : 51,
                                                  0,
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 182, 120, 255),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                ],
                              ),
                              const SizedBox(height: 18),

                              const Divider(
                                color: Color.fromARGB(25, 37, 42, 49),
                                thickness: 1,
                                height: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add',
          child: SvgPicture.asset('assets/icons/Plus.svg', width: 24),
        ),
      ),
    );
  }
}
