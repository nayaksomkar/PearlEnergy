// ignore_for_file: library_private_types_in_public_api, unnecessary_string_interpolations

import 'package:flutter/material.dart';
// ignore: unused_import
//import '../../../packages/user/fetchuserjson.dart';
//import '../../../packages/json/testjson.dart';
import '../yearlist.dart';
//import '../../../packages/variables/paymentsvariable.dart';

String year = '2022';
/* Future<List<List<String>>> paymentHistory = testgh().then((value) {
  // print(value[0]);
  //print(value);
  return value as List<List<String>>;
});
 */
class PaymentHistoryPage extends StatefulWidget {
  const PaymentHistoryPage({Key? key}) : super(key: key);

  @override
  _PaymentHistoryPageState createState() => _PaymentHistoryPageState();
}

class _PaymentHistoryPageState extends State<PaymentHistoryPage> {
// Initial Selected Value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PAYMENT HISTORY OF YEAR $year',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Select Year    : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: dropdownItems,
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                      year = newValue;
                    });
                  },
                ),
              ],
            ),
            Table(border: TableBorder.all(color: Colors.white), children: [
              buildRow(['df', 'bill', 'paidon']),
              buildRow(['Jan', 'bill', 'paidon']),
              buildRow(['Jan', 'bill', 'paidon']),
              //buildRow(paymentHistory[0]),

              //buildRow(bell),
              /* buildRow(['Apr', 'cell']),
              buildRow(['May', 'cell']),
              buildRow(['June', 'cell']),
              buildRow(['Jul', 'cell']),
              buildRow(['Aug', 'cell']),
              buildRow(['Sep', 'cell']),
              buildRow(['Oct', 'cell']),
              buildRow(['Nov', 'cell']),
              buildRow(['Dec', 'cell']) */
            ]),
          ],
        ),
      )),
    );
  }
}

TableRow buildRow(List<String> cells) => TableRow(
        children: cells.map((cell) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            cell,
            //style: style,
          ),
        ),
      );
    }).toList());
