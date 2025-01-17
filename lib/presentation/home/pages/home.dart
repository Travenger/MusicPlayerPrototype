import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:musicapp_trav/common/widgets/appbar/app_bar.dart';
// import 'package:musicapp_trav/core/configs/assets/app_vectors.dart';
// import 'package:musicapp_trav/core/configs/theme/app_colors.dart';
import 'package:musicapp_trav/presentation/home/widgets/news_songs.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
              color: Color(0xFFEEEEEE),
              fontSize: 30,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color(0xFF070F2B),
      ),
      backgroundColor: Color(0xFF070F2B),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enjoy the songs!",
              style: TextStyle(
                color: Color(0xFFEEEEEE),
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            const NewsSongs()
          ],
        ),
      ),
    );
  }
}
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
  
//   @override
//   void initState(){
//     super.initState();
//     _tabController = TabController(length: 4, vsync: this);
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        appBar: BasicAppbar(
//         hideBack: true,
//         action: IconButton(
//           onPressed: () {
//             // Navigator.push(
//             //   context,
//             //   MaterialPageRoute(builder: (BuildContext context) => const ProfilePage())
//             // );
//           },
//           icon: const Icon(
//             Icons.person
//           )
//         ),
//         title: SvgPicture.asset(
//           AppVectors.logo,
//           height: 120,
//           width: 120,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
            
//             _tabs(),
//             SizedBox(
//               height: 260,
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   const NewsSongs(),
//                   Container(),
//                   Container(),
//                   Container()
//                 ],
//               ),
//             ),
//             //const PlayList()
//           ],
//         ),
//       ),
//     );
//   }


  
//   Widget _tabs() {
//     return TabBar(
//       controller: _tabController,
//       isScrollable: true,
//       //labelColor: context.isDarkMode ? Colors.white : Colors.black,
//       indicatorColor: AppColors.primary,
//       padding: const EdgeInsets.symmetric(
//         vertical: 40,
//         horizontal: 16
//       ),
//       tabs: const [
//         Text(
//           'News',
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 16
//           ),
//         ),
//         Text(
//           'Videos',
//            style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 16
//           ),
//         ),
//         Text(
//           'Artists',
//            style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 16
//           ),
//         ),
//         Text(
//           'Podcasts',
//            style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 16
//           ),
//         )
//       ],
//     );
//   }
// }