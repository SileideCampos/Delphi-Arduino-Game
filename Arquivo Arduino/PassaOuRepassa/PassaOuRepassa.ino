/*
 * Desenvolvido por Ítalo Ranielle e Sileide Campos
 * Finalizado e testado em 02/11/2016 
 * Projeto desenvolvido para o GameShow da Faculdadde Área1
 */

int 
player1    = 8,
player2    = 9,
ledsGO     = 7,

lA         = 2,
lB         = 3,
lC         = 4,
lD         = 5,
lE         = 6;

int 
valendo    = 0,
p1         = 0, 
p2         = 0, 
acertou1   = 0, 
acertou2   = 0;

int 
A = 0, 
B = 0, 
C = 0, 
D = 0, 
E = 0;

int
p=0,
latchPin  = 11,
clockPin  = 10,
dataPin   = 12, 
letra     = 0, 
luzes     = 0;

String resp = " ", msg = "";

char dado;
String dados="";
String inicio;

long previousMillis = 0;
long currentMillis = 0; 
long redLedInterval = 13000; // 15000 ms

void setup() {
  pinMode(player1,    INPUT);
  pinMode(player2,    INPUT);
  pinMode(ledsGO,     OUTPUT);
  pinMode(lA,    INPUT);
  pinMode(lB,    INPUT);
  pinMode(lC,    INPUT);
  pinMode(lD,    INPUT);
  pinMode(lE,    INPUT);  
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);  
  apagar();

  Serial.begin(9600);  
}

void loop() {
 inicio = lerSerial();   
 if (inicio == "0") {
  if (luzes == 0) { 
    luzes = 1;
  }
 }else if (luzes == 0){
  //pisca letras 
  piscar(16);
  delay(200);
  piscar(8);
  delay(200);
  piscar(4);
  delay(200);
  piscar(2);
  delay(200);
  piscar(1);
  delay(200);
  apagar();
 }
 
 if (inicio == "8") {
  inicio = "";
  letra = 0;
  delay(400);
  
  digitalWrite(ledsGO, HIGH);
  valendo = 1;  
  if (valendo){
   while ( (valendo) && (p1 == p2)){
    p1 = digitalRead(player1);
    p2 = digitalRead(player2);
   } 
    
   if (p1 != p2){
    if (p1) {
      lp1();
      Serial.print("1");
    }else if (p2){
      lp2();
      Serial.print("2");
    }
   }
  }
  valendo = 0;
  p1=0; p2=0;  
  digitalWrite(ledsGO, LOW);
  
  resp = " ";
  currentMillis = millis(); 
  previousMillis = millis();
  while (currentMillis - previousMillis < redLedInterval) {
    currentMillis = millis();
    resp = resposta();
    if ( (resp != " ") ) {
      break;
    }
  }
  
  if ( (resp == " ") ) { al(0); resp = "0"; }
  Serial.print(resp);
    
  while ( (msg == "") ) {
    msg = lerSerial();
  } 
  
  if (msg == "9"){  
    resp = " ";
    if(p==1){
      repassa();
    }else if(p==2){
      repassa();  
    }

    resp = " ";
    currentMillis = millis(); 
    previousMillis = millis();
    while (currentMillis - previousMillis < redLedInterval) {
      currentMillis = millis();
      resp = resposta();
      if ( (resp != " ") ) {
        break;
      }
    }

    if ( (resp == " ") ) { al(0); resp = "0"; }  
    Serial.print(resp);

    delay(300);
    piscar(96);
    delay(300);
    piscar(96);
    delay(300);
    piscar(96);
    delay(300);
    piscar(96);
    delay(300);
    apagar();
  }
  msg="";
  apagar(); 
 }
}
/////////////////////////Funções///////////////////////////
String lerSerial(){ 
 dados = "";
 dado = ' ';
 while (Serial.available()>0) {
   dado = (byte)Serial.read();  
   dados += dado;
   dado=' ';
   delay(10);
 }
 return dados;
} 

String resposta(){
  A=0;B=0;C=0;D=0;E=0;
  A = digitalRead(lA);
  B = digitalRead(lB);
  C = digitalRead(lC);
  D = digitalRead(lD);
  E = digitalRead(lE);
 
       if (A==1) {al(1);  return "3"; }
  else if (B==1) {al(2);  return "4"; }
  else if (C==1) {al(4);  return "5"; }
  else if (D==1) {al(8);  return "6"; }
  else if (E==1) {al(16); return "7"; }
  else return " ";
  
}
void lp1(){
  p=1;
  digitalWrite(latchPin, LOW);
  shiftOut(dataPin, clockPin, LSBFIRST, 0b00100000);
  digitalWrite(latchPin, HIGH);
}

void lp2(){
  p=2;
  digitalWrite(latchPin, LOW);
  shiftOut(dataPin, clockPin, LSBFIRST, 0b01000000);
  digitalWrite(latchPin, HIGH);
}
void apagar(){
  digitalWrite(latchPin, LOW);
  shiftOut(dataPin, clockPin, LSBFIRST, 0b00000000);
  digitalWrite(latchPin, HIGH);
}

void al(int a){
 if(p==1){
  letra+=32;
 }else if(p==2){
  letra+=64;
 } 
 letra+=a;
 digitalWrite(latchPin, LOW);
 shiftOut(dataPin, clockPin, LSBFIRST, letra);
 digitalWrite(latchPin, HIGH);
} 

void piscar(int a){
 digitalWrite(latchPin, LOW);
 shiftOut(dataPin, clockPin, LSBFIRST, a);
 digitalWrite(latchPin, HIGH);
 digitalWrite(latchPin, LOW);
}

void repassa(){
  if(p==1){
    letra-=32;
    letra+=64;
  }else if(p==2){
    letra-=64;
    letra+=32;
  }
 digitalWrite(latchPin, LOW);
 shiftOut(dataPin, clockPin, LSBFIRST, letra);
 digitalWrite(latchPin, HIGH);
}
   
