import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:impuls/constants.dart';

class ProfileCard extends StatefulWidget {
  ProfileCard({Key key}) : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacingUnit * 2),
      child: Container(
        height: kSpacingUnit * 6,
        width: ScreenUtil().setWidth(375 / 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kSpacingUnit.w * 2),
          color: kBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kSpacingUnit,
            horizontal: kSpacingUnit * 2,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(kSpacingUnit * 2),
                ),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/loading.png',
                  width: kSpacingUnit * 3.4,
                  image:
                      "https://www.attractivepartners.co.uk/wp-content/uploads/2017/06/profile.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                width: kSpacingUnit,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Alexandra Rosales",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: kNameTextStyle,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("La Paz    "),
                      Text("•    "),
                      SvgPicture.asset(
                        'assets/Diamon.svg',
                        width: kSpacingUnit,
                      ),
                      Text(
                        "Premium",
                        style: kCaptionTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
