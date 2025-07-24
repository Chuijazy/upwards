import 'package:flutter/material.dart';
import 'package:upwards_digital/core/app_colors.dart';
import 'package:upwards_digital/main_screen_details/user_header.dart';

class ChinaScreen extends StatelessWidget {
  const ChinaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    final chinaItems = [
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Одежда',
        'quantity': '5/10',
        'status': 'На складе в Китае',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Обувь',
        'quantity': '10/10',
        'status': 'В пути',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Мебель',
        'quantity': '10/10',
        'status': 'На складе в Китае',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Обувь',
        'quantity': '10/10',
        'status': 'На складе в Китае',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Mебель',
        'quantity': '10/10',
        'status': 'В пути',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Одежда',
        'quantity': '5/10',
        'status': 'В пути',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Обувь',
        'quantity': '10/10',
        'status': 'На складе в Китае',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Мебель',
        'quantity': '10/10',
        'status': 'На складе в Китае',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
      {
        'clientCode': '12345678',
        'cargoNumber': '12345678',
        'category': 'Одежда',
        'quantity': '10/10',
        'status': 'В пути',
        'comment': 'есть стеклянные посуды сделанные из стекла',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(isTablet ? 80 : 56),
        child: UserHeader(isTablet: isTablet),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Грузы на складе в Китае',
                  style: TextStyle(
                    fontSize: isTablet ? 24 : 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainTextColor,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: isTablet ? 240 : 180,
                      height: 40,
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Введите номер груза',
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(color: AppColors.borderColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Добавить груз',
                        style: TextStyle(
                          color: AppColors.secondaryTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: isTablet ? 500 : 350,
                  maxWidth: isTablet ? screenWidth * 1.2 : screenWidth * 1.2,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: isTablet ? screenWidth * 1.1 : screenWidth * 1.5,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: DataTable(
                        headingRowColor: MaterialStateProperty.all(
                          AppColors.borderColor,
                        ),
                        headingTextStyle: const TextStyle(color: Colors.white),
                        dataRowMinHeight: 48,
                        columnSpacing: isTablet ? 30 : 16,
                        columns: const [
                          DataColumn(label: Text('Код клиента')),
                          DataColumn(label: Text('Номер груза')),
                          DataColumn(label: Text('Категория товара')),
                          DataColumn(label: Text('Количество мест')),
                          DataColumn(label: Text('Статус')),
                          DataColumn(label: Text('Комментарий')),
                          DataColumn(label: Icon(Icons.remove_red_eye)),
                          DataColumn(label: Icon(Icons.edit)),
                          DataColumn(label: Icon(Icons.delete)),
                        ],
                        rows: List.generate(chinaItems.length, (index) {
                          final item = chinaItems[index];
                          final showRedDot = index < 4;

                          return DataRow(
                            cells: [
                              DataCell(Text(item['clientCode']!)),
                              DataCell(Text(item['cargoNumber']!)),
                              DataCell(Text(item['category']!)),
                              DataCell(Text(item['quantity']!)),
                              DataCell(
                                Text(
                                  item['status']!,
                                  style: TextStyle(
                                    color: item['status'] == 'В пути'
                                        ? Colors.green
                                        : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              DataCell(
                                Text(
                                  item['comment']!,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    if (showRedDot)
                                      const Padding(
                                        padding: EdgeInsets.only(right: 6.0),
                                        child: Icon(
                                          Icons.circle,
                                          color: Colors.red,
                                          size: 8,
                                        ),
                                      ),
                                    const Icon(Icons.remove_red_eye_outlined),
                                  ],
                                ),
                              ),
                              const DataCell(Icon(Icons.edit_outlined)),
                              const DataCell(Icon(Icons.delete_outline)),
                            ],
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
