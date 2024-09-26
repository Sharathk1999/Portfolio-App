import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/constants.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  List<String> tabs = ["Project", "Saved", "Shared", "Achievement"];

  List<Project> filteredProjects = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    // Initialize with all projects

    filteredProjects = projects;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            forceMaterialTransparency: true,
            title: Text(
              "Portfolio",
              style: TextStyle(fontSize: 20.sp, fontFamily: "Roboto"),
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/svg/bag.svg",
                  height: 24.sp,
                  width: 24.sp,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/svg/bell.svg",
                  height: 24.sp,
                  width: 24.sp,
                ),
                onPressed: () {},
              ),
            ],
          ),
          body: Column(
            children: [
              _buildTabBar(),
              _buildSearchBar(),
              Expanded(
                child: TabBarView(children: [
                  _buildProjectList(),
                  _buildSavedList(),
                  _buildSharedList(),
                  _buildAchievements(),
                ]),
              ), // Scrollable project list
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterFloat,
          floatingActionButton: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFDF5532)),
            icon: const Icon(
              Icons.filter_list,
              color: Color(0xFFE0E0E0),
            ),
            onPressed: () {},
            label: Text(
              "Filter",
              style: TextStyle(
                color: const Color(0xFFE0E0E0),
                fontSize: 12.sp,
                fontFamily: "Roboto",
              ),
            ),
          )),
    );
  }

  // Tab bar with indicator on the selected tab
  Widget _buildTabBar() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: TabBar(
        indicatorColor: const Color(0xFFDF5532),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: const Color(0xFFDF5532),
        labelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Roboto",
        ),
        unselectedLabelColor: Colors.grey,
        labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
        tabs: tabs.map((tab) => Tab(text: tab)).toList(),
      ),
    );
  }

  // Search bar widget
  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(
                0xFFE0E0E0,
              ),
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                    filteredProjects = projects
                        .where((project) => project.title
                            .toLowerCase()
                            .contains(searchQuery.toLowerCase()))
                        .toList();
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search a project',
                  hintStyle: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9E95A2),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                    color: const Color(0xFFDF5532),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Icon(
                    Icons.search,
                    color: Color(0xFFFFFFFF),
                    size: 11,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // List of project cards
  Widget _buildProjectList() {
    return ListView.builder(
      itemCount: filteredProjects.length, // Static for now
      itemBuilder: (context, index) {
        return _buildProjectCard(filteredProjects[index]);
      },
    );
  }

  // Individual project card
  Widget _buildProjectCard(Project project) {
    return Container(
      width: 343.w,
      height: 110.h,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xFFE0E0E0),
          ),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10), 
            ),
            child: CachedNetworkImage(
        imageUrl: project.imageUrl,
        placeholder: (context, url) => const CircularProgressIndicator(color:  Color(0xFFDF5532),),
        errorWidget: (context, url, error) => const Icon(Icons.error),
     ),
          ),
          15.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.verticalSpace,
                Flexible(
                  child: Text(
                    project.title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                10.verticalSpace,
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BAHASA SUNDA',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            color: const Color(
                              0xFF303030,
                            ),
                          ),
                        ),
                        Text(
                          'Oleh Al-Baaji Samaan',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            color: const Color(
                              0xFF9E95A2,
                            ),
                          ),
                        ),
                      ],
                    ),
                    10.horizontalSpace,
                    Container(
                      width: 50.w,
                      height: 26.h,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFF39519),
                              Color(0xFFFFCD67),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          "A",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              color: Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // Mock Saved tab
  Widget _buildSavedList() {
    return Center(
      child: Text('Saved Projects', style: TextStyle(fontSize: 16.sp)),
    );
  }

  // Mock Shared tab
  Widget _buildSharedList() {
    return Center(
      child: Text('Shared Projects', style: TextStyle(fontSize: 16.sp)),
    );
  }

  // Mock Achievement tab
  Widget _buildAchievements() {
    return Center(
      child: Text('Achievements', style: TextStyle(fontSize: 16.sp)),
    );
  }
}
