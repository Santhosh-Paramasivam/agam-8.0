import 'package:flutter/material.dart';

class ShipmentSearchBar extends StatefulWidget implements PreferredSizeWidget {
  const ShipmentSearchBar({super.key});

  @override
  _ShipmentSearchBarState createState() => _ShipmentSearchBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ShipmentSearchBarState extends State<ShipmentSearchBar> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFD9D9D9),
      title: _isSearching
          ? TextField(
              controller: _searchController,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: "Search...",
                border: InputBorder.none,
              ),
              style: const TextStyle(color: Colors.white, fontSize: 18),
            )
          : const Text("Search Shipments"),
      actions: [
        _isSearching
            ? IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    _isSearching = false;
                    _searchController.clear();
                  });
                },
              )
            : Row(children: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      _isSearching = true;
                    });
                  },
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.filter_alt))
              ]),
      ],
    );
  }
}
