import 'package:equatable/equatable.dart';

abstract class LoanCalculatorEvent extends Equatable{
  const LoanCalculatorEvent();
}

class CalculateEmi extends LoanCalculatorEvent{
  final double loanAmount;
  final double intrestrate;
  final  double selected;
  CalculateEmi({required this.intrestrate, required this.loanAmount,required this.selected});
  @override
  List<Object?>get props=>[loanAmount,intrestrate,selected];

}