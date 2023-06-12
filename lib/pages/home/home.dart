import 'package:cloud_on_feira/base_page.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  /* final Function(Scene) onSceneTap;
  final List<Scene> scenes;
  final Function(Room) onRoomTap;
  final List<Room> rooms; */

  const DashboardPage({
    Key? key,
  }) : super(key: key);

  Widget containers() {
    return Center(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 0.3),
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: 320,
                height: 200,
                decoration: BoxDecoration(
                  //  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Segurança',
                        style: TextStyle(
                            color: Color(0xffFF6600),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.orange)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.orange),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.orange),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 65,
                                height: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.orange),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Texto',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Cenas',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffFF6600),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 0.5,
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: Colors.black),
                                            // Divider(
                                            //   color: Colors.black,
                                            // ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Cinema',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // const Text(
                                //   'Sala',
                                //   style: TextStyle(
                                //       fontSize: 11, color: Colors.black),
                                // ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.security_outlined,
                                                color: Colors.black),
                                            // Divider(
                                            //   color: Colors.black,
                                            // ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Sair de casa',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // const Text(
                                //   'Sala',
                                //   style: TextStyle(
                                //       fontSize: 11, color: Colors.black),
                                // ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: Colors.black),
                                            // Divider(
                                            //   color: Colors.black,
                                            // ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Chegar em casa',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // const Text(
                                //   'Sala',
                                //   style: TextStyle(
                                //       fontSize: 11, color: Colors.black),
                                // ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: Colors.black),
                                            // Divider(
                                            //   color: Colors.black,
                                            // ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Acordar',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // const Text(
                                //   'Sala',
                                //   style: TextStyle(
                                //       fontSize: 11, color: Colors.black),
                                // ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.security_outlined,
                                                color: Colors.black),
                                            // Divider(
                                            //   color: Colors.black,
                                            // ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'Dormir',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // const Text(
                                //   'Sala',
                                //   style: TextStyle(
                                //       fontSize: 11, color: Colors.black),
                                // ),
                              ],
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Ambientes e Recursos',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffFF6600),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GridView.count(
                          physics: const NeverScrollableScrollPhysics(),
                          childAspectRatio: 0.5,
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: Color(0xffD35400)),
                                            Divider(
                                              color: Color(0xffD35400),
                                            ),
                                            Text(
                                              'Luz principal',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.security_outlined,
                                                color: Color(0xffD35400)),
                                            Divider(
                                              color: Color(0xffD35400),
                                            ),
                                            Text(
                                              'Porta',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: Color(0xffD35400)),
                                            Divider(
                                              color: Color(0xffD35400),
                                            ),
                                            Text(
                                              'Luz quadro',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color: Color(0xffD35400)),
                                            Divider(
                                              color: Color(0xffD35400),
                                            ),
                                            Text(
                                              'Luz ambiente',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.security_outlined,
                                                color: Color(0xffD35400)),
                                            Divider(
                                              color: Color(0xffD35400),
                                            ),
                                            Text(
                                              'Movimento',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Sala',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 65,
                                    height: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: Colors.orange),
                                    ),
                                    child: Container(
                                      child: const Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.garage_outlined,
                                                color: Color(0xffD35400)),
                                            Divider(
                                              color: Color(0xffD35400),
                                            ),
                                            Text(
                                              'Portão',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Garagem',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black),
                                ),
                              ],
                            )
                          ]),
                      //                       Container(
                      //   decoration: BoxDecoration(
                      // color: const Color.fromRGBO(255, 255, 255, 0.3),
                      // borderRadius: BorderRadius.circular(20)),
                      //   child: Container(
                      //     width: 320,
                      //     height: 200,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(20.0),
                      //       border: Border.all(
                      //         color: Colors.transparent,
                      //         width: 1.0,
                      //       ),
                      //     ),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: Column(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           const Text(
                      //             'Ambientes e Recursos',
                      //             style: TextStyle(
                      //                 fontSize: 15,
                      //                 color: Color(0xffFF6600),
                      //                 fontWeight: FontWeight.w500),
                      //           ),
                      //           const SizedBox(
                      //             height: 5,
                      //           ),
                      //           Row(
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               Column(
                      //                 children: [
                      //                   Container(
                      //                     width: 65,
                      //                     height: 130,
                      //                     decoration: BoxDecoration(
                      //                       borderRadius: BorderRadius.circular(12),
                      //                       border: Border.all(color: Colors.orange),
                      //                     ),
                      //                     child: Container(
                      //                       child: const Expanded(
                      //                         child: Column(
                      //                           mainAxisAlignment: MainAxisAlignment.center,
                      //                           crossAxisAlignment:
                      //                               CrossAxisAlignment.center,
                      //                           children: [
                      //                             Icon(Icons.lightbulb_outline_rounded,
                      //                                 color: Colors.black),
                      //                             Divider(
                      //                               color: Colors.black,
                      //                             ),
                      //                             Text(
                      //                               'Luz principal',
                      //                               style: TextStyle(
                      //                                   fontSize: 10, color: Colors.black),
                      //                             ),

                      //                           ],
                      //                         ),
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   const SizedBox(
                      //                     height: 10,
                      //                   ),
                      //                   const Text(
                      //                     'Sala',
                      //                     style: TextStyle(fontSize: 11, color: Colors.black),
                      //                   ),
                      //                 ],
                      //               ),
                      //               const SizedBox(
                      //                 width: 10,
                      //               ),
                      //               Column(
                      //                 children: [
                      //                   Container(
                      //                       width: 65,
                      //                       height: 130,
                      //                       decoration: BoxDecoration(
                      //                         borderRadius: BorderRadius.circular(12),
                      //                         border: Border.all(color: Colors.orange),
                      //                       ),
                      //                       child: Container(
                      //                         child: const Column(
                      //                           mainAxisAlignment:
                      //                               MainAxisAlignment.center,
                      //                           crossAxisAlignment:
                      //                               CrossAxisAlignment.center,
                      //                           children: [
                      //                             Icon(Icons.lightbulb_outline_rounded,
                      //                                 color: Colors.black),
                      //                             Divider(
                      //                               color: Colors.black,
                      //                             ),
                      //                             Text('Luz quadro',
                      //                               style: TextStyle(
                      //                                   fontSize: 10,
                      //                                   color: Colors.black)),
                      //                             // Text('Porta',
                      //                             //     style: TextStyle(
                      //                             //         fontSize: 10,
                      //                             //         color: Colors.black)),
                      //                             // Text('Movimento',
                      //                             //     style: TextStyle(
                      //                             //         fontSize: 10,
                      //                             //         color: Colors.black)),
                      //                             //         Padding(padding: EdgeInsets.only(bottom: 16))
                      //                           ],
                      //                         ),
                      //                       )),
                      //                   const SizedBox(
                      //                     height: 10,
                      //                   ),
                      //                   const Text(
                      //                     'Sala',
                      //                     style: TextStyle(fontSize: 11, color: Colors.black),
                      //                   ),
                      //                 ],
                      //               ),
                      //               const SizedBox(
                      //                 width: 10,
                      //               ),
                      //               Column(
                      //                 children: [
                      //                   Container(
                      //                     width: 65,
                      //                     height: 130,
                      //                     decoration: BoxDecoration(
                      //                       borderRadius: BorderRadius.circular(12),
                      //                       border: Border.all(color: Colors.orange),
                      //                     ),
                      //                     child: Container(
                      //                       child: const Column(
                      //                         mainAxisAlignment: MainAxisAlignment.center,
                      //                         crossAxisAlignment:
                      //                             CrossAxisAlignment.center,
                      //                         children: [
                      //                           Icon(Icons.lightbulb_outline_rounded,
                      //                               color: Colors.black),
                      //                           Divider(
                      //                             color: Colors.black,
                      //                           ),
                      //                           Text('Luz ambiente',
                      //                               style: TextStyle(
                      //                                   fontSize: 10,
                      //                                   color: Colors.black)),
                      //                           // Text(
                      //                           //   'Portão',
                      //                           //   style: TextStyle(
                      //                           //       fontSize: 10, color: Colors.black),
                      //                           // ),
                      //                           // Padding(padding: EdgeInsets.only(bottom: 22))
                      //                         ],
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   const SizedBox(
                      //                     height: 10,
                      //                   ),
                      //                   const Text(
                      //                     'Sala',
                      //                     style: TextStyle(fontSize: 11, color: Colors.black),
                      //                   ),
                      //                 ],
                      //               ),
                      //               const SizedBox(
                      //                 width: 10,
                      //               ),
                      //               Column(
                      //                 children: [
                      //                   Container(
                      //                     width: 65,
                      //                     height: 130,
                      //                     decoration: BoxDecoration(
                      //                       borderRadius: BorderRadius.circular(12),
                      //                       border: Border.all(color: Colors.orange),
                      //                     ),
                      //                     child: Container(
                      //                         child: const Column(
                      //                           mainAxisAlignment:
                      //                               MainAxisAlignment.center,
                      //                           crossAxisAlignment:
                      //                               CrossAxisAlignment.center,
                      //                           children: [
                      //                             Icon(Icons.garage_outlined,
                      //                                 color: Colors.black),
                      //                             Divider(
                      //                               color: Colors.black,
                      //                             ),
                      //                             Text('Portão',
                      //                               style: TextStyle(
                      //                                   fontSize: 10,
                      //                                   color: Colors.black)),
                      //                             // Text('Porta',
                      //                             //     style: TextStyle(
                      //                             //         fontSize: 10,
                      //                             //         color: Colors.black)),
                      //                             // Text('Movimento',
                      //                             //     style: TextStyle(
                      //                             //         fontSize: 10,
                      //                             //         color: Colors.black)),
                      //                             //         Padding(padding: EdgeInsets.only(bottom: 16))
                      //                           ],
                      //                         ),
                      //                       ),
                      //                   ),
                      //                   const SizedBox(
                      //                     height: 10,
                      //                   ),
                      //                   const Text(
                      //                     'Garagem',
                      //                     style: TextStyle(fontSize: 11, color: Colors.black),
                      //                   ),
                      //                 ],
                      //               ),
                      //               Column(
                      //                 children: [
                      //                   Container(
                      //                     width: 65,
                      //                     height: 130,
                      //                     decoration: BoxDecoration(
                      //                       borderRadius: BorderRadius.circular(12),
                      //                       border: Border.all(color: Colors.orange),
                      //                     ),
                      //                     child: Container(
                      //                         child: const Column(
                      //                           mainAxisAlignment:
                      //                               MainAxisAlignment.center,
                      //                           crossAxisAlignment:
                      //                               CrossAxisAlignment.center,
                      //                           children: [
                      //                             Icon(Icons.garage_outlined,
                      //                                 color: Colors.black),
                      //                             Divider(
                      //                               color: Colors.black,
                      //                             ),
                      //                             Text('Portão',
                      //                               style: TextStyle(
                      //                                   fontSize: 10,
                      //                                   color: Colors.black)),
                      //                             // Text('Porta',
                      //                             //     style: TextStyle(
                      //                             //         fontSize: 10,
                      //                             //         color: Colors.black)),
                      //                             // Text('Movimento',
                      //                             //     style: TextStyle(
                      //                             //         fontSize: 10,
                      //                             //         color: Colors.black)),
                      //                             //         Padding(padding: EdgeInsets.only(bottom: 16))
                      //                           ],
                      //                         ),
                      //                       ),
                      //                   ),
                      //                   const SizedBox(
                      //                     height: 10,
                      //                   ),
                      //                   const Text(
                      //                     'Garagem',
                      //                     style: TextStyle(fontSize: 11, color: Colors.black),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Dashboard',
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fundo_novo.jpg'), fit: BoxFit.cover)),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            const SliverAppBar(
              title: Text('Dashboard'),
              centerTitle: true,
              expandedHeight: 50.0,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [Icon(Icons.location_on), Text('Casa')],
                  ),
                )
              ],
              // flexibleSpace: Header(
              //   image: 'assets/cabecalho.png',
              //   organograma: true,
              //   organogramaImage: 'assets/icone_organograma.png',
              // ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: containers(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
