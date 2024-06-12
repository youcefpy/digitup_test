import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_digitup/screens/identity.dart';
import './stories.dart';
import '../screens/personal_information_screen.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    double height_screen = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: width_screen > height_screen
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: width_screen > height_screen
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          // color: Color.fromRGBO(248, 248, 248, 1),
          // margin: EdgeInsets.only(top: 59),
          Container(
            padding: width_screen < height_screen
                ? EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  )
                : EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 10,
                  ),
            color: Color.fromRGBO(248, 248, 248, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Color.fromRGBO(82, 193, 255, 1),
                    ),
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image(
                          image: AssetImage(
                            'assets/images/img_profile.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 40),
                  padding: height_screen > width_screen
                      ? EdgeInsets.symmetric(horizontal: 6)
                      : EdgeInsets.only(right: 40),

                  margin: EdgeInsets.only(
                    top: 25,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maryam.Bernoussy',
                        style: TextStyle(
                          color: Color.fromRGBO(25, 29, 49, 1),
                          fontFamily: 'SpaceGrotesk',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Member since ',
                              style: TextStyle(
                                color: Color.fromRGBO(26, 46, 53, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 9,
                              ),
                            ),
                            TextSpan(
                              text: '6th March 2024',
                              style: TextStyle(
                                color: Color.fromRGBO(26, 46, 53, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6, bottom: 6),
                        width: 24,
                        height: 3,
                        color: Color.fromRGBO(82, 193, 255, 1),
                      ),
                      Container(
                        width: width_screen < height_screen
                            ? MediaQuery.of(context).size.width * 0.45
                            : MediaQuery.of(context).size.width * 0.6,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Insert a mini bio below. Share a snippet about yourself—interests, background, or achievements—to give others a quick glimpse of who you are.',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'SpaceGrotesk',
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            InkWell(
                              child: SvgPicture.asset(
                                'assets/icons/first_widget/edit_icon.svg',
                              ),
                              onTap: null,
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

          /***************Persional Information Block***************************/
          /***************Persional Information Block***************************/
          /***************Persional Information Block***************************/
          /***************Persional Information Block***************************/

          StorySlide(),
          Container(
            margin: EdgeInsets.only(
              top: 25,
              left: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: width_screen > height_screen
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                Text(
                  "About Me",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SpaceGrotesk',
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context)
                          .pushNamed(PersonalInformationScreen.ROUTE_PI),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: SvgPicture.asset(
                                'assets/icons/about/personal_information.svg',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Persional Inforamtion",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'SpaceFrotest',
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/about/indentity.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "My identity",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/about/embasador.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sendyo embassador",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/about/account_security.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Account and security",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          /***************************END Persional INFORMATION BLOCK******************************/

          /***************************PAYMENT BLOCK******************************/
          /**********************************************************************/
          /**********************************************************************/

          Container(
            margin: EdgeInsets.only(top: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payments",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'SpaceFrotest',
                      fontWeight: FontWeight.w700),
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/payments/transfer.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Transfer option",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/payments/payment_method.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Payments methods",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/payments/walette.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/payments/transaction.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Transaction history",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          /***************************END PAYMENT BLOCK ************************/

          /******************************MORE BLOCK************************************ */
          /**************************************************************************** */
          /**************************************************************************** */

          Container(
            margin: EdgeInsets.only(top: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "More",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'SpaceFrotest',
                      fontWeight: FontWeight.w700),
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/more/notification.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Notifications",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/more/faq.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "FAQ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/more/terme_and_cond.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Terme and conditions",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(IdentityScreen.ROUTE_IDENTITY),
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/more/logout.svg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Log out",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'SpaceFrotest',
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
          /****************************** END MORE BLOCK*************************************/
        ],
      ),
    );
  }
}
