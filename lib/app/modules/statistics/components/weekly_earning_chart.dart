import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeeklyEarningChart extends StatefulWidget {
  const WeeklyEarningChart({super.key});

  @override
  State<WeeklyEarningChart> createState() => _WeeklyEarningChartState();
}

class _WeeklyEarningChartState extends State<WeeklyEarningChart> {
  final Color leftBarColor = AppColors.kPrimary;
  final Color rightBarColor = AppColors.kAccent2;
  final Color avgColor = AppColors.kAccent1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sales Earnings', style: AppTypography.kLight16),
        Row(
          children: [
            Text(r'$1,242.45', style: AppTypography.kLight30),
            SizedBox(width: AppSpacing.tenHorizontal),
            CustomIconButton(
              size: 30.h,
              color: AppColors.kPrimary.withOpacity(0.15),
              icon: AppAssets.kAngry,
              onTap: () {},
            ),
            SizedBox(width: 9.w),
            Text('+25%',
                style:
                    AppTypography.kBold14.copyWith(color: AppColors.kPrimary)),
          ],
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 200.h,
          child: const CustomLineChart(),
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: AppSpacing.tenVertical,
              height: 10.w,
              decoration: BoxDecoration(
                color: leftBarColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            const Text('Sales this week'),
            const SizedBox(width: 16),
            Container(
              width: 10.01.w,
              height: 10.01.h,
              decoration: BoxDecoration(
                color: rightBarColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            const Text('Sales last week'),
          ],
        ),
      ],
    );
  }
}

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(sampleData2);
  }

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: 0,
        maxX: 14,
        maxY: 6,
        minY: 0,
      );

  LineTouchData get lineTouchData2 => LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
          
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_2,
        lineChartBarData2_3,
      ];

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('M', style: style);
        break;
      case 2:
        text = const Text('T', style: style);
        break;
      case 3:
        text = const Text('W', style: style);
        break;
      case 4:
        text = const Text('T', style: style);
        break;
      case 5:
        text = const Text('F', style: style);
        break;
      case 6:
        text = const Text('S', style: style);
        break;
      case 7:
        text = const Text('S', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 30,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(
        show: true,
        drawVerticalLine: true,
        drawHorizontalLine: false,
      );

  FlBorderData get borderData => FlBorderData(show: false);

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        color: Colors.transparent,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: true,
          color: AppColors.kAccent1,
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData2_3 => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        color: AppColors.kPrimary,
        barWidth: 5.w,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: true,
          getDotPainter: (spot, percent, barData, index) {
            final radius = 2.r;
            final dotColor = AppColors.kPrimary;
            final strokeWidth = 5.r;
            final strokeColor = Colors.white;

            return FlDotCirclePainter(
              radius: radius,
              color: dotColor,
              strokeWidth: strokeWidth,
              strokeColor: strokeColor,
            );
          },
        ),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 3.8),
          FlSpot(3, 1.9),
          FlSpot(6, 5),
          FlSpot(10, 3.3),
          FlSpot(13, 4.5),
        ],
      );
}
