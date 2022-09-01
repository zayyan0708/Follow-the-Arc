// ignore_for_file: unused_import

import 'package:get/get.dart';

class FAQs {
  FAQs({
    required this.body,
    required this.header,
  });
  String body;
  String header;
}

List<FAQs> faqs = [
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 1',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 2',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 3',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 4',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 5',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 6',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 7',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 8',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 9',
  ),
  FAQs(
    body:
        'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely ',
    header: 'This is dummy FAQs Title 10',
  ),
];


// Scaffold(
//       appBar: AppBar(
//         title: Text('Expansion Panel List'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           margin: EdgeInsets.only(top: 20, bottom: 20),
//           child: Obx(() => ExpansionPanelList(
//               expansionCallback: (panelIndex, isExpanded) {
//                 faqs[panelIndex].isExpanded.value = !isExpanded;
//               },
//               children: faqs.map<ExpansionPanel>((FAQs item) {
//                 return ExpansionPanel(
//                     canTapOnHeader: true,
//                     headerBuilder: ((context, isExpanded) {
//                       return ListTile(title: Text(item.header));
//                     }),
//                     body: ListTile(
//                       title: Text(item.body),
//                     ),
//                     isExpanded: item.isExpanded.value);
//               }).toList())),
//         ),
//       ),
//     );