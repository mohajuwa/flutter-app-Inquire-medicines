import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/FuseR/Summary/Data/data_model.dart';
import 'package:medh/FuseR/Summary/Values/values.dart';
import 'package:medh/FuseR/Summary/Wedgits/overview_task_container.dart';
import 'package:medh/FuseR/Summary/Wedgits/task_progress_card.dart';
import 'package:tcard/tcard.dart';

class DashboardOverview extends ConsumerWidget {
  const DashboardOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dynamic data = AppData.progressIndicatorList;

    List<Widget> cards = List.generate(
        5,
        (index) => TaskProgressCard(
              cardTitle: data[index]['cardTitle'],
              rating: data[index]['rating'],
              progressFigure: data[index]['progress'],
              percentageGap: int.parse(data[index]['progressBar']),
            ));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: TCard(
              cards: cards,
            ),
          ),
          AppSpaces.verticalSpace10,
          Column(
            children: [
              OverviewTaskContainer(
                  cardTitle: "إجمالي ",
                  numberOfItems: "120",
                  imageUrl: "lib/FuseR/Summary/assets/orange_pencil.png",
                  backgroundColor: HexColor.fromHex("EFA17D")),
              OverviewTaskContainer(
                  cardTitle: "عمليات  مكتملة",
                  numberOfItems: "74",
                  imageUrl: "lib/FuseR/Summary/assets/green_pencil.png",
                  backgroundColor: HexColor.fromHex("7FBC69")),
              OverviewTaskContainer(
                  cardTitle: "عمليات غير مكتملة",
                  numberOfItems: "5",
                  imageUrl: "lib/FuseR/Summary/assets/cone.png",
                  backgroundColor: HexColor.fromHex("EDA7FA")),
            ],
          ),
          AppSpaces.verticalSpace10,
          Column(
            children: [
              OverviewTaskContainer(
                  cardTitle: "أصناف نادرة",
                  numberOfItems: "24",
                  imageUrl: "assets/images/icon.png",
                  backgroundColor: HexColor.fromHex("EFA17D")),
              OverviewTaskContainer(
                  cardTitle: "عملاء بالقرب منك",
                  numberOfItems: "80",
                  imageUrl: "assets/stickers/stic_10-17.png",
                  backgroundColor: HexColor.fromHex("7FBC69")),
              OverviewTaskContainer(
                  cardTitle: "عمليات ملغية",
                  numberOfItems: "3",
                  imageUrl: "assets/images/icon1.png",
                  backgroundColor: HexColor.fromHex("EDA7FA")),
            ],
          ),
        ],
      ),
    );
  }
}
