// DefaultTabController(
//           length: 2,
//           child: Column(
//             children: [
//               TabBar(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: AppPaddingStyle.medium),
//                 labelPadding: const EdgeInsets.symmetric(vertical: 0),
//                 unselectedLabelStyle: AppTextStyle.bodyMMedium,
//                 unselectedLabelColor: AppColors.contentSecondary,
//                 labelStyle: AppTextStyle.bodyMBold,
//                 indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: AppColors.primary,
//                 ),
//                 labelColor: AppColors.white,
//                 tabs: [
//                   SizedBox(
//                     height: 35,
//                     child: Center(
//                         child:
//                             Text("Chờ xử lý (${controller.totalTab1.value})")),
//                   ),
//                   SizedBox(
//                     height: 35,
//                     child: Center(
//                         child:
//                             Text("Đã xử lý (${controller.totalTab2.value})")),
//                   ),
//                 ],
//               ),
//               Expanded(
//                   child: Obx(() => TabBarView(children: [
//                         ListView(
//                             padding: const EdgeInsets.only(bottom: 30),
//                             children: controller.showTab1Data
//                                 .map((e) => GestureDetector(
//                                       onTap: () =>
//                                           {controller.handleOpenDetail(e.id!)},
//                                       child: _CareItem(item: e),
//                                     ))
//                                 .toList()),
//                         ListView(
//                             padding: const EdgeInsets.only(bottom: 30),
//                             children: controller.showTab2Data
//                                 .map((e) => GestureDetector(
//                                       onTap: () =>
//                                           {controller.handleOpenDetail(e.id!)},
//                                       child: _CareItem(item: e),
//                                     ))
//                                 .toList()),
//                       ])))
//             ],
//           )),