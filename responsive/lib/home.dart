import 'package:flutter/material.dart';

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  // Breakpoints
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 1200;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFE0E0E0),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= tabletBreakpoint) {
              return _buildDesktopLayout();
            } else if (constraints.maxWidth >= mobileBreakpoint) {
              return _buildTabletLayout();
            } else {
              return _buildMobileLayout();
            }
          },
        ),
      ),
    );


  //   return Scaffold(
  //     backgroundColor: const Color(0xFFE0E0E0),
  //     body: SafeArea(
  //       // 2. Decide based on SCREEN width
  //       child: Builder(builder: (context) {
  //         if (screenWidth >= tabletBreakpoint) {
  //           return _buildDesktopLayout();
  //         } else if (screenWidth >= mobileBreakpoint) {
  //           return _buildTabletLayout();
  //         } else {
  //           return _buildMobileLayout();
  //         }
  //       }),
  //     ),
  //   );
  // }

  }

  // ==================== MOBILE LAYOUT ====================
  // All boxes stacked vertically, BOX 1 is taller
  Widget _buildMobileLayout() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // BOX 1 - Larger height on mobile
          _buildBoxWithHeight('BOX 1', const Color(0xFFD6E5F3), 400),
          const SizedBox(height: 16),
          // BOX 2
          _buildBoxWithHeight('BOX 2', const Color(0xFFF5ECD7), 200),
          const SizedBox(height: 16),
          // BOX 3
          _buildBoxWithHeight('BOX 3', const Color(0xFFF8D7DA), 200),
          const SizedBox(height: 16),
          // BOX 4
          _buildBoxWithHeight('BOX 4', const Color(0xFFD4EDDA), 200),
          const SizedBox(height: 16),
          // BOX 5
          _buildBoxWithHeight('BOX 5', const Color(0xFFF8D7DA), 200),
          const SizedBox(height: 16),
          // BOX 6
          _buildBoxWithHeight('BOX 6', const Color(0xFFF8D7DA), 200),
        ],
      ),
    );
  }

  // ==================== TABLET LAYOUT ====================
  // Matches Image 3 exactly
  Widget _buildTabletLayout() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Top Section: BOX 1 (left, spans 2 rows) + Right Column (BOX 2, BOX 3 & 4)
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // BOX 1 - Left side, spans full height of right column
                Expanded(
                  flex: 1,
                  child: _buildBox('BOX 1', const Color(0xFFD6E5F3)),
                ),
                const SizedBox(width: 16),
                // Right Column: BOX 2 on top, BOX 3 & 4 below
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      // BOX 2 - Top right, wider
                      SizedBox(
                        height: 200,
                        child: _buildBox('BOX 2', const Color(0xFFF5ECD7)),
                      ),
                      const SizedBox(height: 16),
                      // BOX 3 and BOX 4 - Side by side
                      SizedBox(
                        height: 200,
                        child: Row(
                          children: [
                            Expanded(
                              child: _buildBox('BOX 3', const Color(0xFFF8D7DA)),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _buildBox('BOX 4', const Color(0xFFD4EDDA)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // BOX 5 - Full width
          _buildBoxWithHeight('BOX 5', const Color(0xFFF8D7DA), 150),
          const SizedBox(height: 16),
          // BOX 6 - Full width
          _buildBoxWithHeight('BOX 6', const Color(0xFFF8D7DA), 150),
        ],
      ),
    );
  }

  // ==================== DESKTOP LAYOUT ====================
  // Similar to tablet but with different proportions
  Widget _buildDesktopLayout() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          // Top Section: BOX 1 (left) + Right Column (BOX 2, BOX 3 & 4)
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // BOX 1 - Left side, spans full height
                Expanded(
                  flex: 1,
                  child: _buildBox('BOX 1', const Color(0xFFD6E5F3)),
                ),
                const SizedBox(width: 20),
                // Right Column
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      // BOX 2 - Top right
                      Expanded(
                        child: _buildBox('BOX 2', const Color(0xFFF5ECD7)),
                      ),
                      const SizedBox(height: 20),
                      // BOX 3 and BOX 4 - Side by side
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: _buildBox('BOX 3', const Color(0xFFF8D7DA)),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: _buildBox('BOX 4', const Color(0xFFD4EDDA)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Bottom Row: BOX 5 and BOX 6 side by side
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildBox('BOX 5', const Color(0xFFF8D7DA)),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: _buildBox('BOX 6', const Color(0xFFF8D7DA)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ==================== BOX WIDGETS ====================
  Widget _buildBox(String label, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }

  Widget _buildBoxWithHeight(String label, Color color, double height) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}