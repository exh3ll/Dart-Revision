import 'package:flutter/material.dart';
import 'arithmetic.dart';
import 'simpleinterest.dart';
import 'areaofcircle.dart';
import 'palindrome.dart';
import 'richtextscreen.dart';
import 'borderdesign.dart';
import 'flutterlayoutscreen.dart';
import 'columnscreen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  Widget dashboardCard(
    BuildContext context,
    String title,
    IconData icon,
    Widget page,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      borderRadius: BorderRadius.circular(16),
      splashColor: Colors.teal.withOpacity(0.3), // ripple effect
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF1A237E), Color(0xFF3949AB)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: Icon(icon, color: const Color(0xFF1A237E), size: 30),
            ),
            const SizedBox(height: 14),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Dashboard'),
        elevation: 4,
        backgroundColor: const Color(0xFF1A237E),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            dashboardCard(
              context,
              'Arithmetic',
              Icons.calculate,
              const ArithmeticScreen(),
            ),
            dashboardCard(
              context,
              'Simple Interest',
              Icons.money,
              const SimpleInterestScreen(),
            ),
            dashboardCard(
              context,
              'Area of Circle',
              Icons.circle,
              const AreaCircleScreen(),
            ),
            dashboardCard(
              context,
              'Palindrome',
              Icons.sort,
              const PalindromeScreen(),
            ),
            dashboardCard(
              context,
              'Rich Text',
              Icons.text_fields,
              const RichTextScreen(),
            ),
            dashboardCard(
              context,
              'Border Design',
              Icons.border_all,
              const BorderDesignScreen(),
            ),
            dashboardCard(
              context,
              'Column Screen',
              Icons.view_column,
              const ColumnScreen(),
            ),
            dashboardCard(
              context,
              'Flutter Layout',
              Icons.dashboard_customize,
              const FlutterLayoutScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1A237E),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF1A237E)),
      ),
      home: const Dashboard(),
    );
  }
}
