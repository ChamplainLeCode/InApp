import '../../../utils/Style.dart';
import '../../../utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';
import 'package:karee/internationalization.dart';
import 'package:karee/core.dart';
import 'package:karee/navigation.dart';

import 'badge_card.dart';

class DashboardSideMenu extends StatefulComponent {
  @override
  _DashboardSideMenuState createState() => _DashboardSideMenuState();
}

class _DashboardSideMenuState extends ComponentState<DashboardSideMenu> {
  Of<int>? selectedIndexObs;

  @override
  void initState() {
    selectedIndexObs = Of.withTag(#sideMenu);
    super.initState();
  }

  @override
  Widget builder(BuildContext context) {
    return Container(
        width: 250,
        height: screenSize.height,
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: mediaQuery.padding.top),
        color: Style.primaryDashboardDarkColor,
        child: SingleChildScrollView(
            child: Column(
          children: [
            ListTile(
              dense: true,
              minVerticalPadding: 0,
              contentPadding: EdgeInsets.zero,
              leading: Container(
                  height: 40,
                  width: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.gravatar.com/avatar/db2846ed0959748797a7fa5839ce254f')))),
              title: Text(
                'Champlain Marius',
                style: TextStyle(color: Style.whiteText),
              ),
              subtitle: Text(
                'Karee Dev',
                style: TextStyle(color: Style.whiteBackground),
              ),
              onTap: () {
                closeDrawer();
              },
            ),
            Container(
              height: 30,
              width: 250,
              color: Style.dashboardSelectedMenu,
              padding: EdgeInsets.all(10),
              child: Text(
                'INTERNAL NAVIGATION',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xff374850)),
              ),
            ),
            Observer(
              of: selectedIndexObs!,
              child: (ctx) => Container(
                  decoration: selectedIndexObs!.value == 1
                      ? BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Style.dashboardSelectedMenuBorder,
                                  width: 5)),
                          color: Style.dashboardSelectedMenu)
                      : null,
                  child: ListTile(
                    leading:
                        Icon(Icons.saved_search, color: Style.whiteBackground),
                    title: Text(
                      'menu.constants'.translate(),
                      style: TextStyle(color: Style.whiteBackground),
                    ),
                    dense: true,
                    focusColor: Color(0xff1a2226),
                    trailing: BadgeCard(
                        color: Style.warningColor, label: '3', fontSize: 8),
                    onTap: () {
                      closeDrawer();
                      selectedIndexObs!.value = 1;
                      loadMenu();
                    },
                  )),
            ),
            Observer(
                of: selectedIndexObs!,
                child: (ctx) => Container(
                    decoration: selectedIndexObs!.value == 2
                        ? BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Style.dashboardSelectedMenuBorder,
                                    width: 5)),
                            color: Style.dashboardSelectedMenu)
                        : null,
                    child: ListTile(
                      leading: Icon(Icons.construction_outlined,
                          color: Style.whiteBackground),
                      title: Text(
                        'menu.controllers'.translate(),
                        style: TextStyle(color: Style.whiteBackground),
                      ),
                      dense: true,
                      focusColor: Color(0xff1a2226),
                      trailing: BadgeCard(
                          color: Style.primaryColor, label: '2', fontSize: 8),
                      onTap: () {
                        closeDrawer();
                        selectedIndexObs!.value = 2;
                        loadMenu();
                      },
                    ))),
            Observer(
                of: selectedIndexObs!,
                child: (ctx) => Container(
                    decoration: selectedIndexObs!.value == 3
                        ? BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Style.dashboardSelectedMenuBorder,
                                    width: 5)),
                            color: Style.dashboardSelectedMenu)
                        : null,
                    child: ListTile(
                      leading: Icon(Icons.electrical_services_rounded,
                          color: Style.whiteBackground),
                      title: Text(
                        'menu.resources'.translate(),
                        style: TextStyle(color: Style.whiteBackground),
                      ),
                      dense: true,
                      focusColor: Color(0xff1a2226),
                      trailing: BadgeCard(
                          color: Style.infoColor, label: '2', fontSize: 8),
                      onTap: () {
                        closeDrawer();
                        selectedIndexObs!.value = 3;
                        loadMenu();
                      },
                    ))),
            Observer(
                of: selectedIndexObs!,
                child: (ctx) => Container(
                    decoration: selectedIndexObs!.value == 4
                        ? BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Style.dashboardSelectedMenuBorder,
                                    width: 5)),
                            color: Style.dashboardSelectedMenu)
                        : null,
                    child: ListTile(
                      leading: Icon(Icons.navigation_outlined,
                          color: Style.whiteBackground),
                      title: Text(
                        'menu.routage'.translate(),
                        style: TextStyle(color: Style.whiteBackground),
                      ),
                      dense: true,
                      focusColor: Color(0xff1a2226),
                      trailing: BadgeCard(
                          color: Style.warningColor, label: '2', fontSize: 8),
                      onTap: () {
                        closeDrawer();
                        selectedIndexObs!.value = 4;
                        loadMenu();
                      },
                    ))),
            Observer(
                of: selectedIndexObs!,
                child: (ctx) => Container(
                    decoration: selectedIndexObs!.value == 5
                        ? BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Style.dashboardSelectedMenuBorder,
                                    width: 5)),
                            color: Style.dashboardSelectedMenu)
                        : null,
                    child: ListTile(
                      leading: Icon(Icons.miscellaneous_services_outlined,
                          color: Style.whiteBackground),
                      title: Text(
                        'menu.services'.translate(),
                        style: TextStyle(color: Style.whiteBackground),
                      ),
                      dense: true,
                      focusColor: Color(0xff1a2226),
                      trailing: BadgeCard(
                          color: Style.successColor,
                          label: 'menu.badge.new'.translate(),
                          fontSize: 8),
                      onTap: () {
                        closeDrawer();
                        selectedIndexObs!.value = 5;
                        loadMenu();
                      },
                    ))),
            Observer(
                of: selectedIndexObs!,
                child: (ctx) => Container(
                    decoration: selectedIndexObs!.value == 6
                        ? BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: Style.dashboardSelectedMenuBorder,
                                    width: 5)),
                            color: Style.dashboardSelectedMenu)
                        : null,
                    child: ListTile(
                      leading:
                          Icon(Icons.fit_screen, color: Style.whiteBackground),
                      title: Text(
                        'menu.screens'.translate(),
                        style: TextStyle(color: Style.whiteBackground),
                      ),
                      dense: true,
                      focusColor: Color(0xff1a2226),
                      trailing: BadgeCard(
                          color: Style.successColor,
                          label: 'menu.badge.new'.translate(),
                          fontSize: 8),
                      onTap: () {
                        closeDrawer();
                        selectedIndexObs!.value = 6;
                        loadMenu();
                      },
                    ))),
            // Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ElevatedButton(
                onPressed: () {
                  KareeInternationalization.changeLanguage(Locale('fr'));
                  if (Utils.isMobileView) KareeRouter.goBack();
                },
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shape: CircleBorder(),
                    primary: (KareeInternationalization
                                .currentLocale?.languageCode ==
                            'fr'
                        ? Style.whiteText
                        : Style.primaryDashboardDarkColor)),
                child: Text('🇫🇷'),
              ),
              ElevatedButton(
                onPressed: () {
                  KareeInternationalization.changeLanguage(Locale('en'));
                  if (Utils.isMobileView) KareeRouter.goBack();
                },
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    shape: CircleBorder(),
                    primary: (KareeInternationalization
                                .currentLocale?.languageCode ==
                            'en'
                        ? Style.whiteText
                        : Style.primaryDashboardDarkColor)),
                child: Text(
                  '🇬🇧',
                ),
              )
            ])
          ],
        )));
  }

  void loadMenu() {
    switch (selectedIndexObs!.value) {
      case 1:
        KareeRouter.goto('/dashboard/constants');
        break;
      case 2:
        KareeRouter.goto('/dashboard/controllers');
        break;
      case 3:
        KareeRouter.goto('/dashboard/resources');
        break;
      case 4:
        KareeRouter.goto('/dashboard/routage');
        break;
      case 5:
        KareeRouter.goto('/dashboard/services');
        break;
      case 6:
        KareeRouter.goto('/dashboard/screen');
        break;
    }
  }

  void closeDrawer() {
    if (Utils.isMobileView) {
      KareeRouter.goBack();
    }
  }
}
