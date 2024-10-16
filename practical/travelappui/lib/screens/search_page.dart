import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _makecontainerdeal1() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(233, 237, 248, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      width: 70,
                      height: 40,
                      child: Image.asset(
                        "assets/bck.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              width: 180,
              child: Row(
                children: [
                  Text(
                    "El Cario",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Color.fromRGBO(228, 161, 2, 1),
                  ),
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(228, 161, 2, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 180,
            child: Row(
              children: [
                Text(
                  "egypt",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(179, 182, 187, 1),
                  ),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "reviews 848",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(179, 182, 187, 1),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'London',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                '(England)',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 176, 174, 174),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(27, 48, 101, 1),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Included",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              "For more details, press on icons.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 90, 88, 88),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(53, 109, 250, 1),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 3,
                      ),
                    ),
                    child: Icon(
                      Icons.airplanemode_active,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(53, 109, 250, 1),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 3,
                      ),
                    ),
                    child: Icon(
                      Icons.hotel,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(53, 109, 250, 1),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 3,
                      ),
                    ),
                    child: Icon(
                      Icons.car_rental,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(53, 109, 250, 1),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 3,
                      ),
                    ),
                    child: Icon(
                      Icons.tour,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Rating & Reviews",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Row(
              children: [
                Text(
                  "sort by recent reviews ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 90, 88, 88),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 237, 248, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "London is Great!",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 14, 14, 14),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 105, 105, 105),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Spacer(),
                        Text(
                          "12/08/18",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 105, 105, 105),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rutrum est nec nunc gravida lobortis. Nulla interdum imperdiet tortor et hendrerit. Mauris vehicula elit a libero suscipit auctor. Curabitur leo lorem, dignissim sed lectus vitae, dictum imperdiet enim. Nulla ut."),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gallery",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sorted by recent photos",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(179, 182, 187, 1)),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                _makecontainerdeal1(),
                SizedBox(
                  width: 10,
                ),
                _makecontainerdeal1()
              ],
            )
          ],
        ),
      ),
    );
  }
}
