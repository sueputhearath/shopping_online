import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping/screen/home/screen/recommended_house.dart';
import 'package:online_shopping/screen/home/screen/search_input.dart';
import 'package:online_shopping/screen/home/screen/welcome_text.dart';
import 'custom_app_bar.dart';

class TabBarProduct extends StatefulWidget {
  const TabBarProduct({Key? key}) : super(key: key);

  @override
  State<TabBarProduct> createState() => _TabBarProductState();
}

class _TabBarProductState extends State<TabBarProduct>
    with SingleTickerProviderStateMixin {


  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  get nameController => null;
  var accountController = TextEditingController();

  //String? storeValue;
  void onChangeValue(String str) {
    accountController.text = str;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: CustomAppBar(),
          body: NestedScrollView(
            floatHeaderSlivers: false,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: WelcomeText(),
                ),
                SliverToBoxAdapter(
                  child: SearchInput(),
                ),
                SliverPersistentHeader(
                  delegate: SliverAppBarDelegate(
                    TabBar(
                      isScrollable: true,
                    indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
                      controller: _tabController,
                      //give the indicator a decoration (color and border radius)
                      indicatorWeight:3,
                      indicatorColor: Theme.of(context).primaryColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Theme.of(context).primaryColor,
                      unselectedLabelColor: Colors.black,
                      tabs: const [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: ('Puma'),
                        ),
                        Tab(
                          text: ('Balenciaga'),
                        ),
                        Tab(
                          text: ('Nike'),
                        ),
                        Tab(
                          text: ('Converse'),
                        ),
                      ],

                    ),
                  ),
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: Colors.black12,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Latest Ads"),
                        Container(
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {
                                    //property.changeLayout(Lout.large);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      //color: property.layout == Lout.large? kThirdColor:Colors.transparent,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(
                                        CupertinoIcons.list_bullet_below_rectangle,
                                        //color: theme.isLight() ? property.layout == Lout.large?Colors.white:Colors.black:Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {
                                    //property.changeLayout(Lout.list);
                                  },
                                  child:
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                     // color: property.layout == Lout.list?kThirdColor:Colors.transparent,
                                    ),
                                    child:  const Padding(
                                      padding: EdgeInsets.all(5),
                                      child:  Icon(CupertinoIcons.list_bullet,
                                        //color: theme.isLight() ? property.layout == Lout.list?Colors.white:Colors.black:Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: InkWell(
                                  onTap: () {
                                    //property.changeLayout(Lout.grid);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                     // color: property.layout == Lout.grid?kThirdColor:Colors.transparent,
                                    ),
                                    child:  const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(
                                        CupertinoIcons.rectangle_grid_2x2,
                                        //color: theme.isLight() ? property.layout == Lout.grid?Colors.white:Colors.black:Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )

              ];
            },
            body: TabBarView(
                controller: _tabController,
                children:  [
                  TopProduct(),
                  TopProduct(),
                  TopProduct(),
                  TopProduct(),
                  TopProduct(),
                ]),
          ),
        ));
  }

}
class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  SliverAppBarDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
