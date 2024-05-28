library auto_control_panel_pk;

class Abastecimento {
  double valorTotalPago;
  double litrosAbastecidos;
  int quilometragemRodada;

  Abastecimento({
    required this.valorTotalPago,
    required this.litrosAbastecidos,
    required this.quilometragemRodada,
  });

  double autonomia() {
    return quilometragemRodada / litrosAbastecidos;
  }

  double valorPorLitro() {
    return valorTotalPago / litrosAbastecidos;
  }
}
