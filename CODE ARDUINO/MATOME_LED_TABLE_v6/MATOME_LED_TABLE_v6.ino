/* CODE FOR V3 PCB MAIN
 * Driver max7219
 * cmd:
 * LED3 : Sáng led số 3
 * RST : Xóa tất cả các led
 * PINOUT:
 * 22 : DIN MAIN 
 * 23 : CS MAIN
 * 24 : CLK MAIN
 * -----------------
 * 25 : DIN CARD
 * 26 : CLK CARD
 * -----------------
 * SERIAL TX0 RX0 FOR DEBUG
 * SERIAL TX1 RX1 FOR ESP6288
 * AT COMMAND END BY CR+CF
 * DEBUG END LF
 * --------LCD I2C---------
 * SDA
 * SCL
 * Address: 0x3f(0x27)
 */
 /*
  * 24/10/2017: add Enableinterrupt.h to control all pin for interrupt
  * next_,back_,home_ to interrupt change funtion
  * 02/11/17: Add clearDisplay(), clear all led.
  * 04/11/17: Add home_ watchdog timer
  * 16/11/17: Add autoconnect wifi.
  * 30/11/17: Add clear buffer serial1, close tcp if send/receive ok
  * 20/01/2018: Add defined file, compile for v3 pcb
  * 25/01/2018: Add support for version<3
  * 18/09/2018: responce to globle var;funct reverse(2000) --> reverse(3000) repair error with new matome insert machine
  */
#include <LedControl.h>
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <avr/wdt.h>
#include "MATOME_DEFINE.h"
LiquidCrystal_I2C lcd(0x27,20,4);//or 0x3F,0x27
//-----------------------------------------------------
LedControl cl_main=LedControl(DIN_MAIN,CLK_MAIN,SC_MAIN,2);
//-----------------------------------------------------
LedControl cl1=LedControl(DIN_CARD,CLK_CARD,CS_CARD1,4);
LedControl cl2=LedControl(DIN_CARD,CLK_CARD,CS_CARD2,4);
LedControl cl3=LedControl(DIN_CARD,CLK_CARD,CS_CARD3,4);
LedControl cl4=LedControl(DIN_CARD,CLK_CARD,CS_CARD4,4);
//----------------------------------------------------
void setup() {
  //WATCHDOG TIMRER
  wdt_enable(WDTO_8S);
  //initialize lcd 20x4
  lcd.init();
  lcd.clear();
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print("CONTROL BOX MATOME");
  lcd.setCursor(0,1);
  lcd.print("VERSION: V"+String(version_));
  // initialize serial for debug:
  Serial.begin(115200);
 //initialize serial for esp8266
  Serial1.begin(115200);
  // reserve bytes for the inputString:
  inputString.reserve(10);
  DATA.reserve(3000);
  response.reserve(3000);
  findAP.reserve(20);
  //-----------SETTING LED MAIN------------
  for(int i=0;i<cl_main.getDeviceCount();i++){
    cl_main.setIntensity(i,10);
    cl_main.shutdown(i,true);
    cl_main.clearDisplay(i);
    }
  //----------------SETTING LED MODULN 1
  for(int i=0;i<cl1.getDeviceCount();i++){
    cl1.setIntensity(i,10);
    cl1.shutdown(i,true);
    cl1.clearDisplay(i);
    }
  //--------------SETTING LED MODULN 2
    for(int i=0;i<cl2.getDeviceCount();i++){
    cl2.setIntensity(i,10);
    cl2.shutdown(i,true);
    cl2.clearDisplay(i);
    }
  //--------------SETTING LED MODULN 3
      for(int i=0;i<cl3.getDeviceCount();i++){
    cl3.setIntensity(i,10);
    cl3.shutdown(i,true);
    cl3.clearDisplay(i);
    }
    //-------------SETTING LED MODULN 4
      for(int i=0;i<cl4.getDeviceCount();i++){
    cl4.setIntensity(i,10);
    cl4.shutdown(i,true);
    cl4.clearDisplay(i);
    }
    //---------------SETTING SWITCH------------
    pinMode(S1,INPUT_PULLUP);
    pinMode(S2,INPUT_PULLUP);
    pinMode(S3,INPUT_PULLUP);
    pinMode(S4,INPUT_PULLUP);
    pinMode(S5,INPUT_PULLUP);
    pinMode(S6,INPUT_PULLUP);
    pinMode(S7,INPUT_PULLUP);
    pinMode(S8,INPUT_PULLUP);
    pinMode(S9,INPUT_PULLUP);
    pinMode(S10,INPUT_PULLUP);
    pinMode(S11,INPUT_PULLUP);
    pinMode(S12,INPUT_PULLUP);
    pinMode(S13,INPUT_PULLUP);
    pinMode(S14,INPUT_PULLUP);
    pinMode(S15,INPUT_PULLUP);
    pinMode(S16,INPUT_PULLUP);    
    pinMode(S17,INPUT_PULLUP);
    pinMode(S18,INPUT_PULLUP);
    pinMode(S19,INPUT_PULLUP);
    pinMode(S20,INPUT_PULLUP);
    pinMode(S21,INPUT_PULLUP);
    pinMode(S22,INPUT_PULLUP);
    pinMode(S23,INPUT_PULLUP);
    pinMode(S24,INPUT_PULLUP);
    pinMode(S25,INPUT_PULLUP);
    pinMode(S26,INPUT_PULLUP);
    pinMode(S27,INPUT_PULLUP);
    pinMode(S28,INPUT_PULLUP);
    pinMode(S29,INPUT_PULLUP);
    pinMode(S30,INPUT_PULLUP);
    pinMode(S31,INPUT_PULLUP);        
    pinMode(S32,INPUT_PULLUP);
//---------DEFINE IN/OUT---------------
    pinMode(buzzer_,OUTPUT);
    if(version_<3) digitalWrite(buzzer_,HIGH);
    else digitalWrite(buzzer_,LOW);//fix to high or low
    pinMode(next_,INPUT_PULLUP);
    pinMode(back_,INPUT_PULLUP);
    pinMode(home_,INPUT_PULLUP);
    pinMode(reset_,INPUT_PULLUP);
//-------------connect to server---------
send_get("AT+CWMODE=1","OK",2000);//AP MODE
send_get("AT+CWAUTOCONN=1","OK",2000);//AUTO CONNECT TO AP
//send_get("AT+CWHOSTNAME=XE1","OK",2000);//RENAME ESP
//send_get("AT+CIPCLOSE","OK",2000); //CLOSE TCP
//send_get("AT+UART_DEF=115200,8,1,0,0","OK",2000); //SETTING BAUD RATE
//----------------Sound starting----------------
bip3();
}
void loop() {
   wdt_reset();
   // print the string when a newline arrives for debug-------------------------------------
   if (stringComplete) {
    //-------------Processing CMD--------
    // CMD control led
    if(inputString.substring(0,3)=="LED") {
    inputString=inputString.substring(3);  
    int dem=inputString.toInt();
    //Serial.println(dem);
    cl1.shutdown(address(dem),false);
    cl1.setLed(address(dem),get_row(dem),get_col(dem),true);
    }
    // CMD home_ LED----------------
    if(inputString.substring(0,3)=="RST") {
    cl1.clearDisplay(0);
    cl1.clearDisplay(1);
    cl1.clearDisplay(2);
    cl1.clearDisplay(3);
    cl1.shutdown(0,true);
    cl1.shutdown(1,true);
    cl1.shutdown(2,true);
    cl1.shutdown(3,true);
    //Serial.println("home_");
    }
    //--------------------------------------
    if(inputString.substring(0,3)=="AT:") {
    inputString=inputString.substring(3); 
    Serial1.print(inputString);
    }
    //-------------------------------------
    // clear the string:
    inputString = "";
    stringComplete = false;
     }
   //---------processing main---------------------------------------------------------------------------
   if(DATA==""){// yeu cau gui data
    switch(check_esp()){
    case '4'://disconnect TCP
         lcd.clear();
         lcd.setCursor(0,2);lcd.print("TCP:");
         lcd.setCursor(0,3);lcd.print("CONNECTING...");
         //Serial.println("AT+CIPSTART=\"TCP\","+get_ip_host()+",100");
         send_get("AT+CIPSTART=\"TCP\","+get_ip_host()+",100","OK",3000);
         return;
    case '5'://disconnect AP
         findAP = searchAP(SSID_); 
         if(findAP != ""){
         lcd.clear();
         lcd.setCursor(0,0);lcd.print("AP:");
         lcd.setCursor(0,1);lcd.print(findAP); 
         send_get("AT+CWJAP_DEF="+ SSID_ + "," + PASSWORD_,"OK",5000);
         } else {
         lcd.clear();
         lcd.setCursor(0,0);lcd.print("AP:");
         lcd.setCursor(0,1);lcd.print("Don't have AP...");          
          }
         return;
    case '2'://disconnect TCP
         lcd.clear();
         lcd.setCursor(0,2);lcd.print("AP:");
         lcd.setCursor(0,3);lcd.print("CONNECTED AP...");
         //Serial.println("AT+CIPSTART=\"TCP\","+get_ip_host()+",100");
         send_get("AT+CIPSTART=\"TCP\","+get_ip_host()+",100","OK",3000);
         //Serial.println(get_ip_host());
         return;
    case '3'://connected ok
         //Serial.println(get_ip_host());
         break;
    default:
         lcd.clear();
         lcd.setCursor(0,2);lcd.print("ESP:");
         lcd.setCursor(0,3);lcd.print("Busy...");
         delay(1000);
         return;  
    }
    // get data
     if(get_data()==false){lcd.clear();lcd.setCursor(0,0);lcd.print("CHOOSE MODEL:...");delay(500);return;}
     else {
     lcd.clear();
     first = DATA.indexOf(":");
     second =DATA.indexOf(":",first+1); 
     three = DATA.indexOf(":",second+1);
     four = DATA.indexOf(":",three+1);
     five = DATA.indexOf(":",four+1);
     six = DATA.indexOf(":",five+1);
     seven = DATA.indexOf(":",six+1);
     step_dem=seven;
     stepping=1;
     step_dem_arr[0]=step_dem;
     //---------------
     target=DATA.substring(second+1,three).toInt();
     actual=0;
     step_num=DATA.substring(six+1,seven).toInt();
     model=DATA.substring(four+1,five);
     //---------------------
     lcd.setCursor(0,0);lcd.print("MODEL:"+model);
     lcd.setCursor(0,1);lcd.print("STEP:"+String(step_num));
     lcd.print(" TARGET:"+String(target));
     lcd.setCursor(12,2);lcd.print("ACT:"+String(actual));
     bip2();
     //Serial.println(DATA);
     //clearDisplay();
     clear_all_led();
   }
   }
   //-----------vong lap chinh---------------------------------------------------------------------
   if((actual<target)&&(target!=0)){//start checking loop
    //clear all led
      clear_all_led();
    //-------------------------------------------------------
      if(stepping<=step_num){ // main run
      int arr[6];
      String arr_step[6];
      //----
      arr[0] = DATA.indexOf(",",step_dem+1);
      arr_step[0]=DATA.substring(step_dem+1,arr[0]);
      //----
      arr[1] = DATA.indexOf(",",arr[0]+1); 
      arr_step[1]=DATA.substring(arr[0]+1,arr[1]);
      //----
      arr[2] = DATA.indexOf(",",arr[1]+1);
      arr_step[2]=DATA.substring(arr[1]+1,arr[2]);
      //----
      arr[3] = DATA.indexOf(",",arr[2]+1);
      arr_step[3]=DATA.substring(arr[2]+1,arr[3]);
      //---
      arr[4] = DATA.indexOf(",",arr[3]+1);
      arr_step[4]=DATA.substring(arr[3]+1,arr[4]);
      //---
      arr[5] = DATA.indexOf(",",arr[4]+1);
      arr_step[5]=DATA.substring(arr[4]+1,arr[5]);
      //----
      lcd.setCursor(8,2);lcd.print("    ");//clear stepping num
      lcd.setCursor(0,2);lcd.print("STEPING:"+String(stepping));
      lcd.setCursor(0,3);lcd.print("                    ");//clear
      lcd.setCursor(0,3);lcd.print(arr_step[0]+""+arr_step[1]+""+arr_step[2]+""+arr_step[3]+"-"+arr_step[4]+"-"+arr_step[5]);
      //-----------
      while((sw(arr_step[5])==true)){//start while loop
          ong1(arr_step[0],true);
          ong2(arr_step[1],true);
          mau(arr_step[2],true);
          jigu(arr_step[3],true);
          matrix(arr_step[4],true);
          delay(50);
          ong1(arr_step[0],false);
          ong2(arr_step[1],false);
          mau(arr_step[2],false);
          jigu(arr_step[3],false);
          delay(50);
          if(sw(next_)==false){  //next_ BUTON
                               step_dem = arr[5];
                               stepping=stepping+1;
                               step_dem_arr[stepping-1]=step_dem;
                               matrix(arr_step[4],false);
                               bip1();
                               return;
                            }
          else if(sw(back_)==false){ //back_ BUTTON
                                        if(stepping>1){stepping-=1;step_dem=step_dem_arr[stepping-1];matrix(arr_step[4],false);bip1();return;}
                                        else {step_dem=step_dem_arr[stepping-1];matrix(arr_step[4],false);bip1();return;}
                                 }
          else if(sw(home_)==false){  //home_ SW
                                       unsigned long time_,time_prev=millis();
                                       while(sw("7")==false){time_=millis()-time_prev;}
                                       if(time_ < 3000 ){
                                            step_dem=seven;
                                            stepping=1;
                                            step_dem_arr[0]=step_dem;
                                            matrix(arr_step[4],false);
                                            bip1();return;   
                                                        } else {//XOA ALL DATA
                                                                DATA="";
                                                                target=0;
                                                                actual=0;
                                                                clear_all_led();
                                                                bip3();
                                                                return;
                                                               }                                                             
                                 }
                                     wdt_reset();}//end while loop
                               
      matrix(arr_step[4],false);
      bip1();
      step_dem = arr[5];
      stepping+=1;
      step_dem_arr[stepping-1]=step_dem;      
      //--------------
      //--------------
      
                        }// end main run stepping <= step_num
                        else    { //+1 actual
                               bip3();
                               actual+=1;
                               lcd.setCursor(12,2);
                               lcd.print("ACT:"+String(actual));
                               lcd.setCursor(8,2);
                               lcd.print("  ");
                               step_dem=step_dem_arr[0];
                               stepping=1;
                               //------------------------------
                                    lcd.setCursor(0,0);lcd.print("MODEL:"+model);
                                    lcd.setCursor(0,1);lcd.print("STEP:"+String(step_num));
                                    lcd.print(" TARGET:"+String(target));
                                    lcd.setCursor(12,2);lcd.print("ACT:"+String(actual));
                                    //--------------
                                    lcd.setCursor(0,3);lcd.print("                    ");//clear
                                    lcd.setCursor(0,3);lcd.print("Finish 1 Matome");
                                  //--------SEND ACTUAL TO HOST-----------
                                  //OPEN PORT
                                  if(send_get("AT+CIPSTART=\"TCP\","+get_ip_host()+",100","OK",5000)){
                                     send_get("AT+CIPSEND="+String(7+String(actual).length()),"OK",100);
                                     Serial1.print("ACTUAL:"+String(actual));
                                     delay(500);
                                     send_get("AT+CIPCLOSE","OK",500);  
                                     //CLOSE
                                      bip1();} else {
                                                      send_get("AT+CIPCLOSE","OK",500);
                                                    }
                                                                                                   
                                  }
                                              }//end checking loop actual<target&& target!=0
                                              else {// target = actual
                                                      bip3();
                                                      //OPEN
                                                      if(send_get("AT+CIPSTART=\"TCP\","+get_ip_host()+",100","OK",5000)){
                                                         Serial1.print("AT+CIPSEND=6\r\n");
                                                         delay(100);
                                                         Serial1.print("FINISH");
                                                         delay(500);
                                                         send_get("AT+CIPCLOSE","OK",500);                                                                                                                          }else {send_get("AT+CIPCLOSE","OK",500);}
                                                         DATA="";
                                                         target=0;
                                                         actual=0;                                                                    
                                                      //CLOSE
                                                      //delay(500);
                                                    } 
}
//-----------------------------------------------------------------------------------------------------
void serialEvent() {
  while (Serial.available()) {
    // get the new byte:
    char inChar = (char)Serial.read();
    // add it to the inputString:
    inputString += inChar;
    // if the incoming character is a newline, set a flag
    // so the main loop can do something about it:
    if (inChar == '\n') {
      stringComplete = true;
    }
  }
}
//led row from 0->256-----------------------------
unsigned int get_row(int num){
  //LED 1-128
  if((1<=num)&&(num<=128)){
  num=num-1;
  int dem = num/8;
  if(num<64){ //Serial.println(dem);
              return dem;}
  else { //Serial.println(dem-8);
         return dem-8;
       }
     }
  //LED 129-256
  else if((128<=num)&&(num<=256)){
  num=num-1-128;
  int dem = num/8;
  if(num<64){// Serial.println(dem);
             return dem;}
  else { //Serial.println(dem-8);
         return dem-8;
       }
     }
  
  }
//led col from 0->256--------------------------------  
unsigned int get_col(int num){
  //led 1-127
 if((1<=num)&&(num<=128)){
 num=num-1;
 int dem = num/8;
 dem = num-dem*8;
 //Serial.println(dem);
 return dem;
 }
 //led 128-256
  if((129<=num)&&(num<=256)){
 num=num-1-128;
 int dem = num/8;
 dem = num-dem*8;
 //Serial.println(dem);
 return dem;
 }
 }
//--get address-------------------------------------------------------------
unsigned int address(int num_){
  if((1<=num_)&&(num_<=64)) return 0;
  if((65<=num_)&&(num_<=128)) return 1;
  if((129<=num_)&&(num_<=192)) return 2;
  if((193<=num_)&&(num_<=256)) return 3;
  }
//----------send cmd and get response-------------------------------------------------
bool send_get(String command,String condition, unsigned int timeout_)
{   response = "";
    clear_buffer_serial1();
    Serial1.print(command+"\r\n");
    unsigned long time_ = millis();  
    while( (time_+ timeout_ ) > millis()){
      while(Serial1.available()){
        char c = Serial1.read();
        response+=c;
                               }  
                                      }                                 
    if(debug){Serial.println(response);}
    wdt_reset();
    if(response.indexOf(condition)>-1){
      return 1;
    }
    else return 0;
}
//----check status esp and arduino------------------------------------------------
char check_esp(){
  response="";
  //Serial1.flush();
  clear_buffer_serial1();
  Serial1.print("AT+CIPSTATUS\r\n");
  unsigned long time_ = millis();  
  while( (time_+ 2000) > millis()){
      while(Serial1.available()){
        char c = Serial1.read();
        response+=c;
      }  
    }
    if(debug){Serial.println(response);}
    int dem = response.indexOf("STATUS:");
    if(dem>-1){
      //Serial.println(response.charAt(dem+7));
      return response.charAt(dem+7);
    }
    else return 'e';
}
//------------------------------------------------------------------------
void ong1(String str,bool set){
  unsigned int dm=str.toInt();
  if(dm!=0){
  cl_main.shutdown(address(dm),false);
  cl_main.setLed(address(dm),get_row(dm),get_col(dm),set);
  delay(1);}
  }
void ong2(String str,bool set){
  unsigned int dm=str.toInt();
  if(dm!=0){
  cl_main.shutdown(address(dm),false);
  cl_main.setLed(address(dm),get_row(dm),get_col(dm),set);
  delay(1);}
  }
void mau(String str,bool set){
  unsigned int dm=str.toInt();
  if(dm!=0){
    if(dm<=256) {cl1.shutdown(address(dm),false);cl1.setLed(address(dm),get_row(dm),get_col(dm),set);}
    else if(dm<=512) {cl2.shutdown(address(dm-256),false);cl2.setLed(address(dm-256),get_row(dm-256),get_col(dm-256),set);}
       else if(dm<=768) {cl3.shutdown(address(dm-512),false);cl3.setLed(address(dm-512),get_row(dm-512),get_col(dm-512),set);}
            else if(dm<=1024) {cl4.shutdown(address(dm-768),false);cl4.setLed(address(dm-768),get_row(dm-768),get_col(dm-768),set);}  
    delay(1);
           }
}
void jigu(String str,bool set){
  unsigned int dm=str.toInt();
  if(dm!=0){
      if(dm<=256) {cl1.shutdown(address(dm),false);cl1.setLed(address(dm),get_row(dm),get_col(dm),set);}
      else if(dm<=512) {cl2.shutdown(address(dm-256),false);cl2.setLed(address(dm-256),get_row(dm-256),get_col(dm-256),set);}
           else if(dm<=768) {cl3.shutdown(address(dm-512),false);cl3.setLed(address(dm-512),get_row(dm-512),get_col(dm-512),set);}
               else if(dm<=1024) {cl4.shutdown(address(dm-768),false);cl4.setLed(address(dm-768),get_row(dm-768),get_col(dm-768),set);}
      delay(1);
           }
  }
void matrix(String str,bool set){
  unsigned int dm=str.toInt();
  if(dm!=0){
  if(dm<=256) {cl1.shutdown(address(dm),false);cl1.setLed(address(dm),get_row(dm),get_col(dm),set);}
  else if(dm<=512) {cl2.shutdown(address(dm-256),false);cl2.setLed(address(dm-256),get_row(dm-256),get_col(dm-256),set);}
       else if(dm<=768) {cl3.shutdown(address(dm-512),false);cl3.setLed(address(dm-512),get_row(dm-512),get_col(dm-512),set);}
            else if(dm<=1024) {cl4.shutdown(address(dm-768),false);cl4.setLed(address(dm-768),get_row(dm-768),get_col(dm-768),set);}
  delay(1);
           }
  }
bool sw(String str){ 
  return digitalRead(str.toInt());
  }  
//-----------nhan DATA tu server----------
bool get_data()
{   
    clear_buffer_serial1();
    response = "";
    Serial1.print("AT+CIPSEND=5\r\n");
    delay(100);
    Serial1.print("MODEL");
    long int time_ = millis();  
    while( (time_+3000) > millis()){
      while(Serial1.available()){
        char c = Serial1.read();
        response+=c;
      }  
    }
    //kiem tra DATA tra ve
    if(debug){Serial.println(response);}
    delay(100);
    //SAVE DATA1
     if((response.indexOf("MODEL"))>-1&&(response.indexOf("STEP")>-1)&&(response.indexOf("TARGET")>-1)){
       DATA="";
       unsigned int first_ = response.indexOf(":");
       unsigned int second_ = response.indexOf("\r\n",first_+1);
       DATA=response.substring(first_,second_);// save :Model....\r\n
       if(debug) Serial.println(DATA);
       //close tcp here
        send_get("AT+CIPCLOSE","OK",200);
        return 1;
       } else return 0;
}
//get ip of host
String get_ip_host()
{   String response = "";
    clear_buffer_serial1();
    Serial1.print("AT+CIPSTA?\r\n");
    delay(1);
    unsigned long time_ = millis();  
    while( (time_+100) > millis()){
      while(Serial1.available()){
        char c = Serial1.read();
        response+=c;
      }  
    }
    //kiem tra DATA tra ve
    int dem = response.indexOf("+CIPSTA:gateway:");
    if(dem>-1){
       //int first = response.indexOf(":");
       int second = response.indexOf("\r\n",dem+1);
       response=response.substring(dem + 16,second);
       return response;
    }
    else return "";
}
//-----bip----
void bip3(void){
  if(version_==2){
   digitalWrite(buzzer_,LOW);
   delay(200);
   digitalWrite(buzzer_,HIGH);
   delay(100);
   digitalWrite(buzzer_,LOW);
   delay(200);
   digitalWrite(buzzer_,HIGH);
   delay(100);
   digitalWrite(buzzer_,LOW);
   delay(200);
   digitalWrite(buzzer_,HIGH);
   delay(100);}
   else{
   digitalWrite(buzzer_,HIGH);
   delay(200);
   digitalWrite(buzzer_,LOW);
   delay(100);
   digitalWrite(buzzer_,HIGH);
   delay(200);
   digitalWrite(buzzer_,LOW);
   delay(100);
   digitalWrite(buzzer_,HIGH);
   delay(200);
   digitalWrite(buzzer_,LOW);
   delay(100); 
   }
  }
void bip2(void){
  if(version_==2){
   digitalWrite(buzzer_,LOW);
   delay(200);
   digitalWrite(buzzer_,HIGH);
   delay(100);
   digitalWrite(buzzer_,LOW);
   delay(200);
   digitalWrite(buzzer_,HIGH);
   delay(100);}
   else{
   digitalWrite(buzzer_,HIGH);
   delay(200);
   digitalWrite(buzzer_,LOW);
   delay(100);
   digitalWrite(buzzer_,HIGH);
   delay(200);
   digitalWrite(buzzer_,LOW);
   delay(100);} 
  }  
void bip1(void){
   if(version_==2) {
    digitalWrite(buzzer_ ,LOW);
    delay(100);
    digitalWrite(buzzer_ ,HIGH);
    delay(100);}
    else {
   digitalWrite(buzzer_ ,HIGH);
   delay(100);
   digitalWrite(buzzer_ ,LOW);
   delay(100);
    }
  }
//-------clear all led function--------------
void clear_all_led(){
   for(int i=0;i<cl_main.getDeviceCount();i++){
    cl_main.clearDisplay(i);
    cl_main.shutdown(i,true);
    }
  //----------------SETTING LED MODULN 1
  for(int i=0;i<cl1.getDeviceCount();i++){
    cl1.clearDisplay(i);
    cl1.shutdown(i,true);
    }
  //--------------SETTING LED MODULN 2
    for(int i=0;i<cl2.getDeviceCount();i++){
    cl2.clearDisplay(i);
    cl2.shutdown(i,true);
    }
  //--------------SETTING LED MODULN 3
      for(int i=0;i<cl3.getDeviceCount();i++){
    cl3.clearDisplay(i);
    cl3.shutdown(i,true);
    }
    //-------------SETTING LED MODULN 4
      for(int i=0;i<cl4.getDeviceCount();i++){
    cl4.clearDisplay(i);
    cl4.shutdown(i,true);
    }
  }
String searchAP(String ssid){
    clear_buffer_serial1();
    String response = "";
    Serial1.print("AT+CWLAP="+ssid+"\r\n");
    unsigned long time_ = millis();  
    while( (time_ + 5000) > millis()){
      while(Serial1.available()){
        char c = Serial1.read();
        response+=c;
      }  
    }
    wdt_reset();
    //kiem tra DATA tra ve
    Serial.println(response);
    int dem = response.indexOf("+CWLAP:");
    if(dem>-1){
       int s1 = response.indexOf(",");
       int s2 = response.indexOf(",",s1+1);
       int s3 = response.indexOf(",",s2+1);
       response="Streng:"+response.substring(s2,s3);
       return response;
    }
    else return "";
  }
 void clear_buffer_serial1(){
  if(Serial1.available()){
    Serial1.read();
    }
  }
