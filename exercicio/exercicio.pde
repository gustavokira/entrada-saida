String[] lines;
String[][] filmes;
ArrayList<String> temporario;

public void setup(){

  lines = loadStrings("filmes.csv");
  filmes = new String[lines.length][4];
  temporario = new ArrayList<String>();
  
  for (int i = 0; i < lines.length; i++) {
    String[] filme = lines[i].split(",");
    filmes[i] = filme;
  }
  
  for (int i = 0 ; i < filmes.length; i++) {
    int ano = Integer.parseInt(filmes[i][2]);
    if(ano > 1990){ 
      temporario.add(filmes[i][0]);
    }
  }
  
  String[] saida = new String[temporario.size()];
  saida = temporario.toArray(saida);
  
  saveStrings("filmes-90.csv",saida);
}