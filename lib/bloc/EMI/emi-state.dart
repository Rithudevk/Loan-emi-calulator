import 'package:equatable/equatable.dart';

abstract class LoanCalculatorState extends Equatable {
  const LoanCalculatorState();
}

class LoanCalculatorInitial extends LoanCalculatorState {
  @override
  List<Object> get props => [];
}

class LoanCalculated extends LoanCalculatorState {
  final double emi;
  final double totalamount;

  LoanCalculated(this.emi,this.totalamount);

  @override
  List<Object> get props => [emi,totalamount];
}