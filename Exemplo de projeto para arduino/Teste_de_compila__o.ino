
int estado = 0;
int bup = 0;
int lup = 0;
int bdown = 0;
int ldown = 0;
int bright = 0;
int lright = 0;
int bleft = 0;
int lleft = 0;
int temp;
void setup()
{
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(12, INPUT_PULLUP);
  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, INPUT_PULLUP);
  pinMode(10, INPUT_PULLUP);
  pinMode(11, INPUT_PULLUP);
  pinMode(12, INPUT_PULLUP);
  pinMode(13, INPUT_PULLUP);
  
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  digitalWrite(2, LOW);
  digitalWrite(3, LOW);
  digitalWrite(8, LOW);
  
 
}

void loop()
{
  int valorLido = 1023 - analogRead(A0);
  int faixatempo = map(valorLido, 0, 1000, 1, 3);
  
   if(faixatempo == 1){
    temp = 20000;
  }
  
  if(faixatempo == 2){
    temp = 10000;
  }
  
  if(faixatempo == 3){
    temp = 5000;
  }
  
  tone(8, 197.74); delay(300); noTone(8);
  tone(8, 470.4); delay(300); noTone(8);
  tone(8, 264.0); delay(300); noTone(8);delay(50);
  tone(8, 197.74); delay(300); noTone(8);delay(250);;
  if(digitalRead(13)==HIGH) {estado = 1;}
  noTone(8);
  if(estado==1){
  do{
    int ale = random(0,4);
    delay(50);
    digitalWrite(ale,HIGH);
    delay(temp);
    //Joystick
    int hori = map(analogRead(A1), 0, 1023, 1, 3);
    int vert = map(analogRead(A2), 0, 1023, 1, 3);
    delay (100);
    //identificação do Joystick
    if(hori == 1 && vert == 2) {
    digitalWrite (1,LOW);//(“Esquerda”)
    }
    else if(hori == 3 && vert == 2) {
    digitalWrite (3,LOW);//(“Direita”)
    }
    else if(vert == 1 && hori == 2) {
    digitalWrite (0,LOW);//(“Para cima”)
    }
    else if(vert == 3 && hori == 2) {
    digitalWrite (2,LOW);//(“Para baixo”)
    }
    else if(hori == 1 && vert == 1) {
    digitalWrite (4,LOW);//(“EC”)
    }
    else if(hori == 3 && vert == 1) {
    digitalWrite (5,LOW);//(“DC”)
    }
    else if(hori == 1 && vert == 3) {
    digitalWrite (7,LOW);//(“EB”)
    }
    else if(hori == 3 && vert == 3) {
    digitalWrite (6,LOW);//(“DB”)
    }
    else 
    {digitalWrite (ale,LOW);
      tone(8, 197.74); delay(300); noTone(8);
      tone(8, 352.4); delay(300); noTone(8);
      tone(8, 373.3); delay(300); noTone(8);delay(250);;
     delay(2000);}
    delay(2000);
    
    
    
  }while(estado==0);
  
  }
    
  }
