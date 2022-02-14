
// class _MenuPageState extends State<MenuPage>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;

//   @override
//   void initState() {
//     super.initState();
//     tabController = new TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }
// Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios_new_rounded,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               iconSize: 30,
//               icon: const Icon(Icons.notifications_none_outlined))
//         ],
//       ),
//       body: NestedScrollView(
//         controller: _scrollController,
//         headerSliverBuilder: (context, value) {
//           return [
//             SliverToBoxAdapter(
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Row(
//                   children: [
//                     const CircleAvatar(
//                         radius: 30,
//                         backgroundImage: NetworkImage(
//                             'https://scontent.fkkc3-1.fna.fbcdn.net/v/t1.6435-9/121464897_1674389956054147_7600087054913125543_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEw3e5pNcieod6C8YuThAtLMO--PZXM0RUw7749lczRFYRfiD-K4Q8wxLC7kfFjb_sw-5nKQEUUmag-0wRy9RB9&_nc_ohc=gXnX5SdnGioAX-2wzyf&_nc_ht=scontent.fkkc3-1.fna&oh=00_AT-VhLqPBpvJbQZO_70vYKx7sBJ8xMEgWSSoMlKtvAdw-g&oe=621AEBB5')),
//                     const SizedBox(
//                       width: 30,
//                     ),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Army Store',
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: const [
//                                   Text('ผู้ติดตาม  '),
//                                   Text(
//                                     '2000',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: const [
//                                   Text('กำลังติดตาม  '),
//                                   Text(
//                                     '500',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: TabBar(
//                 controller: tabController,
//                 tabs: const [
//                   Tab(
//                     text: 'ร้านค้า',
//                   ),
//                   Tab(
//                     text: 'รีวิว',
//                   )
//                 ],
//               ),
//             ),
//           ];
//         },
//         body: Container(
//           child: TabBarView(
//             controller: tabController,
//             children: [
//               bayer(),
//               vendor(),
//             ],
//           ),
//         ),
//       ),
//     )