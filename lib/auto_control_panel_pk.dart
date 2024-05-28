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

  double autonomiaMedia(List<Abastecimento> abastecimentos) {
    double somatorio = 0.0;
    int amount = abastecimentos.length;
    for (var abast in abastecimentos) {
      somatorio += somatorio + abast.autonomia();
    }
    return somatorio / amount;
  }
}
