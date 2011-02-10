// Stop  watch assignment - INF1510

int startStopPin = 2;
boolean start = false;
int teller;

void setup(){
  Serial.begin(9600);
  teller = 0;
}

void loop(){

 if(digitalRead(startStopPin) == LOW){
   startStopButtonPressed();
 }
 
 if(start == true){
  for(int i = 0; i<1000;i++){
   delay(1);
   // Check for stop button pressed
    if(digitalRead(startStopPin) == LOW){
      startStopButtonPressed();
     break; 
    }
  }
   
 }
 
 if(start == true){
  teller++; 
  Serial.println(teller);
 }
 

   
 
}

void startStopButtonPressed(){
 // Do nothing while button is pressed
   while(digitalRead(startStopPin) == LOW){
   }
   // Check if the watch is going or not and change value
   if(start == true)start = false;
   else start = true;
   
}


