import 'package:flutter/material.dart';

/* void main() {
runApp(const MyApp());
} */

/* class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Flutter DropDownButton',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: const MyHomePage(),
	debugShowCheckedModeBanner: false,
	);
}
} */

class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key}) : super(key: key);

@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	
// Initial Selected Value
String dropdownvalue = 'Item 1';

// List of items in our dropdown menu
var items = [	
	'Item 1',
	'Item 2',
	'Item 3',
	'Item 4',
	'Item 5',
];
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text("Geeksforgeeks"),
	),
	body: Center(
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [
			DropdownButton(
				
			// Initial Value
			value: dropdownvalue,
				
			// Down Arrow Icon
			icon: const Icon(Icons.keyboard_arrow_down),	
				
			// Array list of items
			items: items.map((String items) {
				return DropdownMenuItem(
				value: items,
				child: Text(items),
				);
			}).toList(),
			// After selecting the desired option,it will
			// change button value to selected value
			onChanged: (String? newValue) {
				setState(() {
				dropdownvalue = newValue!;
				});
			},
			),
		],
		),
	),
	);
}
}
