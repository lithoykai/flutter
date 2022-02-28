class Carro{ 
//variaveis para os métodos.
final int velocidadeMaxima;
int _velocidadeAtual= 0;

Carro([this.velocidadeMaxima = 200]);

int get velocidadeAtual{
return this._velocidadeAtual;
}

void set velocidadeAtual(novaVelocidade){
  var deltaValido = (this._velocidadeAtual - novaVelocidade).abs() <= 5;
  if(deltaValido && novaVelocidade >= 0){
    this._velocidadeAtual = novaVelocidade;
  }
}

int? acelerar(){
if(_velocidadeAtual + 5 >= velocidadeMaxima){
  _velocidadeAtual = velocidadeMaxima;
} else{
  _velocidadeAtual += 5;
};
return _velocidadeAtual;
}

int? freiar(){
if(_velocidadeAtual - 5 <= 0){
  _velocidadeAtual = 0;
} else{
  _velocidadeAtual -= 5;
};
return _velocidadeAtual;
}

bool estaNoLimite(){
  return _velocidadeAtual == velocidadeMaxima;
}

}