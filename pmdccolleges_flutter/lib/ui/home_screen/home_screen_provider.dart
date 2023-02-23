import 'package:pmdccolleges_client/pmdccolleges_client.dart';
import 'package:pmdccolleges_flutter/core/enums/view_state.dart';
import 'package:pmdccolleges_flutter/core/model/base_view_model.dart';
import 'package:pmdccolleges_flutter/main.dart';
import 'package:pmdccolleges_flutter/ui/auth/login_screen/login_screen.dart';

class HomeScreenProvider extends BaseViewModal {
  int paid = 0;
  int unPaid = 0;
  List<FeeRecord> feeRecords = [];
  List<NoticeBoard> noticeBoard = [];

  // init / constructor

  HomeScreenProvider() {
    getFeeRecord();
    getNoticeBoard();
  }

  // get Student Fee Record in Installment

  Future<void> getFeeRecord() async {
    setState(ViewState.busy);
    try {
      feeRecords = await client.feeRecord
          .getFeeRecord(studentDetails!.studentId)
          .then((v) {
        if (v.isNotEmpty) {
          return feeCalculation();
        }
        return v;
      });
    } catch (e) {
      print("Error Occured: $e");
    }
    setState(ViewState.idle);
    print("Fee Record length: ${feeRecords.length}");
    // notifyListeners();
  }

  // get Notice Board Details

  Future<void> getNoticeBoard() async {
    setState(ViewState.busy);
    try {
      noticeBoard = await client.noticeBoard.getNotice();
    } catch (e) {
      print("Error Occured: $e");
    }
    setState(ViewState.idle);
    print("Notice Board length: ${noticeBoard.length}");
    notifyListeners();
  }

  // Fee calculation...

  feeCalculation() {
    feeRecords.forEach((record) {
      paid += record.paid;
    });
    unPaid = feeRecords[0].totalFee - paid;
  }
}
