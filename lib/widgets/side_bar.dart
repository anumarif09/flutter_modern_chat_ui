import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int selectedIndex = 0;

  final List<IconData> icons = [
    Icons.person,
    Icons.chat,
    Icons.groups,
    Icons.call,
    Icons.settings,
    Icons.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(
                          icons[index],
                          size: 30,
                          color:
                              isSelected ? Colors.white : Colors.grey.shade700,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
