import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_chat/ui/auth/login.dart';
import 'package:supabase_chat/ui/navigation/pengaturan.dart';
import 'package:supabase_chat/modules/riverpod/items.dart';
import 'package:supabase_chat/modules/riverpod/user.dart';
import 'package:supabase_chat/modules/utils/styles.dart';
import 'package:supabase_chat/modules/utils/utils.dart';
import 'package:supabase_chat/ui/widgets/item_list.dart';
import 'package:supabase_chat/ui/widgets/item_search.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  final _searchController = TextEditingController();
  final _searchFocus = FocusNode();

  Future<void> _logout() async {
    await supabase.auth.signOut().then((_) {
      if (mounted) {
        navigateAndClear(context, Login());
      }
    });
  }

  bool _isSearching = false;

  Widget _titleBar() {
    return GestureDetector(
        onTap: () {
          setState(() {
            _isSearching = true;
          });
          _searchFocus.requestFocus();
        },
        child: Text('supabase_chat'));
  }

  Widget _searchBar() {
    return SizedBox(
      height: 35,
      child: TextField(
        focusNode: _searchFocus,
        controller: _searchController,
        style: TextStyle(fontSize: 16),
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Cari pola',
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none)),
      ),
    );
  }

  void _doSearch() {
    ref.read(searchItemsProvider.notifier).search(_searchController.text);
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_doSearch);
  }

  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(getUserProvider);
    return Scaffold(
        appBar: AppBar(
          leading: _isSearching
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _isSearching = false;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                  ))
              : DrawerButton(
                  color: menuIconColor,
                ),
          title: Row(
            children: [
              Expanded(
                  child: _isSearching == false ? _titleBar() : _searchBar()),
              _isSearching
                  ? InkWell(
                      onTap: () {
                        _searchController.clear();
                      },
                      child: Icon(
                        Icons.close,
                        color: menuIconColor,
                      ))
                  : InkWell(
                      onTap: () {
                        setState(() {
                          _isSearching = true;
                        });
                        _searchFocus.requestFocus();
                      },
                      child: Icon(
                        Icons.search,
                        color: menuIconColor,
                      ))
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                color: grey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      ClipOval(
                        child: Container(
                            color: const Color.fromARGB(255, 190, 190, 190),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.person,
                                size: 50,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        userData.userMetadata?['name'] ?? 'Guest',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(userData.email!),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.verified,
                            color: menuIconColor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Beli Versi Pro')
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      navigate(context, Pengaturan());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: menuIconColor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Pengaturan')
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _logout();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: menuIconColor,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Keluar')
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: _isSearching ? const ItemSearch() : const ItemList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
        ));
  }
}
