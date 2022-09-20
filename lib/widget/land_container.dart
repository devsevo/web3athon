import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import '../constant/utils.dart';

Widget landWid(width, height, isverified, area, address, price, isForSell,
        makeforSellFun) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255),
            offset: Offset(0.0, 1.0), //(x,y)
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height / 2.3,
            width: width * 1.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              child: Image.asset(
                'assets/landimg.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Text(
              isverified ? 'Verified' : 'Not Yet Verified',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Text(
              area + ' Sq.Ft',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Text(
              address,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Text(
              'Price:' + price,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isForSell
                    ? MaterialButton(
                        color: Colors.redAccent,
                        onPressed: null,
                        child: const Text('On Sell'),
                      )
                    : MaterialButton(
                        color: Colors.redAccent,
                        onPressed: isverified ? makeforSellFun : null,
                        child: const Text('Make it for Sell'),
                      ),
                MaterialButton(
                  color: Color.fromARGB(255, 49, 175, 143),
                  onPressed: () {},
                  child: const Text('View Details'),
                )
              ],
            ),
          )
        ],
      ),
    );
Widget landWid2(width, height, isverified, area, address, price, isMyLand,
        isForSell, sendRequestFun, viewDetailsFun) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255),
            offset: Offset(0.0, 1.0), //(x,y)
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height / 2.3,
            width: width * 1.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              child: Image.asset(
                'assets/landimg.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Text(
              isverified ? 'Verified' : 'Not Yet Verified',
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Text(
              area + ' Sq.Ft',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Text(
              address,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            child: Text(
              'Price:' + price,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isMyLand
                    ? MaterialButton(
                        color: Colors.redAccent,
                        onPressed: null,
                        child: const Text('Send Request To Buy'),
                      )
                    : MaterialButton(
                        color: Colors.redAccent,
                        onPressed: isForSell ? sendRequestFun : null,
                        child: isForSell
                            ? Text('Send Request To Buy')
                            : Text('Not for sell yet'),
                      ),
                MaterialButton(
                  color: Color.fromARGB(255, 49, 175, 143),
                  onPressed: viewDetailsFun,
                  child: const Text('View Details'),
                )
              ],
            ),
          )
        ],
      ),
    );

Widget landWid3(
        owneraddress, area, address, price, propertyPID, surveyNumber, docu) =>
    Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      width: width,
      height: 400,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 255, 255, 255),
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 1.0,
            ),
          ],
          color: Color.fromARGB(255, 49, 175, 143),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Land Info",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 13,
          ),
          const Text(
            'Verified',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 49, 175, 143)),
          ),
          const SizedBox(
            height: 13,
          ),
          textCustom("Owner Address:", ""),
          textCustom("", owneraddress),
          const SizedBox(
            height: 13,
          ),
          textCustom("Area : ", area + 'Sqft'),
          const SizedBox(
            height: 13,
          ),
          textCustom("PID : ", propertyPID),
          const SizedBox(
            height: 13,
          ),
          textCustom("Survey No. : ", surveyNumber),
          const SizedBox(
            height: 13,
          ),
          textCustom("Address : ", address),
          const SizedBox(
            height: 13,
          ),
          textCustom("Price : ", price),
          const SizedBox(
            height: 13,
          ),
          TextButton(
            onPressed: () {
              launchUrl(docu.toString());
            },
            child: const Text(
              '  View Document',
              style: TextStyle(color: Color.fromARGB(255, 49, 175, 143)),
            ),
          ),
        ],
      ),
    );

Widget textCustom(text1, text2) => Row(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          text2,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 20),
        )
      ],
    );
