void main () {
      String nome = 'Laranja';
      double peso = 100.2;
      String cor = 'Verde e Amarela';
      String sabor = 'Doce e cítrica';
      int diasDesdeColheita = 40;
      bool isMadura = functEstaMadura(diasDesdeColheita);

      print(isMadura);
      print(functEstaMadura(20));

      if(diasDesdeColheita >= 30) {
        isMadura = true;
      } else {
        isMadura = false;
      }


}

bool functEstaMadura(dias){
      if(dias >= 30){
            return true;
      } else {
            return false;
      }
}
