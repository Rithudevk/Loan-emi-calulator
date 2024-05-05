import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loan_cal/bloc/EMI/emi-event.dart';
import 'package:loan_cal/bloc/EMI/emi-state.dart';

class LoanCalculatorBloc extends Bloc<LoanCalculatorEvent,LoanCalculatorState>{
  LoanCalculatorBloc():super(LoanCalculatorInitial());
  @override 
  Stream<LoanCalculatorState> mapEventToState(
    LoanCalculatorEvent event,
  ) async* {
    if (event is CalculateEmi) {
      double monthlyInterest = event.intrestrate / 12 / 100;
      double totalPayments = event.selected;
      double temp = pow((1 + monthlyInterest), totalPayments.toDouble()).toDouble();
      double emi = (event.loanAmount * monthlyInterest * temp) / (temp - 1);
       LoanCalculated(emi,totalPayments);
    }
  }
}