import '../../../components/icon_badge.dart';
import '../../../utils/Style.dart';
import '../../../utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';

class DashboardAppBarTool extends StatelessComponent {
  @override
  Widget builder(BuildContext context) {
    return Container(
        height: 50,
        color: Style.primaryDashboardDarkColor,
        padding: EdgeInsets.only(right: 20),
        child: AppBar(
          primary: false,
          backgroundColor: Style.primaryDashboardDarkColor,
          elevation: 0,
          actions: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: IconBadge(
                  callBack: () => print('callback'),
                  color: Style.whiteText,
                  icon: Icons.email_outlined,
                  number: 4,
                  badgeColor: Style.successColor,
                  size: 25,
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: IconBadge(
                  callBack: () => print('callback'),
                  color: Style.whiteText,
                  icon: Icons.notifications_outlined,
                  number: 10,
                  badgeColor: Style.warningColor,
                  size: 25,
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: IconBadge(
                  callBack: () => print('callback'),
                  color: Style.whiteText,
                  icon: Icons.flag_outlined,
                  number: 9,
                  badgeColor: Style.dangerColor,
                  size: 25,
                )),
            Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: () => null,
                    child: Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.gravatar.com/avatar/db2846ed0959748797a7fa5839ce254f')))))),
            if (!Utils.isMobileView)
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Champlain Marius',
                    style: TextStyle(
                        color: Style.whiteText, fontWeight: FontWeight.w300),
                  ))
          ],
        ));
  }
}
