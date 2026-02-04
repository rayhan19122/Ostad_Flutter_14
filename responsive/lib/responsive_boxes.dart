import 'package:flutter/material.dart';

class ResponsiveBoxes extends StatelessWidget{
  const ResponsiveBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: LayoutBuilder(
         builder: (context, constraints){
           if(constraints.maxWidth >= 1100){
             return desktopDashboard();
           }else if(constraints.maxWidth >= 600){
             return tabletDashboard();
           }else{
             return mobileDashboard();
           }
         },
       ),
     ),
    );
  }
}

const double kSpacing = 10.0;
const double kBorderRadius = 15.0;

Widget desktopDashboard(){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      spacing: kSpacing,
      children: [
        Expanded(
          flex: 2,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: kSpacing,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFBDE8F5),
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                    child: Text(
                      'Box-1',
                      textAlign: TextAlign.center,
                    ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  spacing: kSpacing,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFFEEAC9),
                          borderRadius: BorderRadius.circular(kBorderRadius),
                        ),
                        child: Text(
                          'Box-2',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        spacing: kSpacing,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFE4EF),
                                borderRadius: BorderRadius.circular(kBorderRadius),
                              ),
                              child: Text(
                                'Box-3',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFD6F4ED),
                                borderRadius: BorderRadius.circular(kBorderRadius),
                              ),
                              child: Text(
                                'Box-4',
                                textAlign: TextAlign.center,
                              ),
                            ),
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

        Expanded(
          flex: 1,
          child: Row(
            spacing: kSpacing,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE4EF),
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: Text(
                    'Box-5',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE4EF),
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: Text(
                    'Box-6',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    ),
  );
}
Widget tabletDashboard(){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      spacing: kSpacing,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            spacing: kSpacing,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFBDE8F5),
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: Text(
                    'Box-1',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  spacing: kSpacing,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFFFEEAC9),
                          borderRadius: BorderRadius.circular(kBorderRadius),
                        ),
                        child: Text(
                          'Box-2',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        spacing: kSpacing,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFE4EF),
                                borderRadius: BorderRadius.circular(kBorderRadius),
                              ),
                              child: Text(
                                'Box-3',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFFD6F4ED),
                                borderRadius: BorderRadius.circular(kBorderRadius),
                              ),
                              child: Text(
                                'Box-4',
                                textAlign: TextAlign.center,
                              ),
                            ),
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

        Expanded(
          flex: 1,
          child: Column(
            spacing: kSpacing,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE4EF),
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: Text(
                    'Box-5',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE4EF),
                    borderRadius: BorderRadius.circular(kBorderRadius),
                ),
                  child: Text(
                    'Box-6',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    ),
  );
}

const double mobileContainerHeight = 180.0;

Widget mobileDashboard(){
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        spacing: kSpacing,
        children: [
          Container(
            height: mobileContainerHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFBDE8F5),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Text(
              'Box-1',
              textAlign: TextAlign.center,
            ),
          ),
    
          Container(
            height: mobileContainerHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFFEEAC9),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Text(
              'Box-2',
              textAlign: TextAlign.center,
            ),
          ),
    
          Container(
            height: mobileContainerHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFFFE4EF),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Text(
              'Box-3',
              textAlign: TextAlign.center,
            ),
          ),
    
          Container(
            height: mobileContainerHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFD6F4ED),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Text(
              'Box-4',
              textAlign: TextAlign.center,
            ),
          ),
    
          Container(
            height: mobileContainerHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFFFE4EF),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Text(
              'Box-5',
              textAlign: TextAlign.center,
            ),
          ),
    
          Container(
            height: mobileContainerHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFFFE4EF),
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            child: Text(
              'Box-6',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}
