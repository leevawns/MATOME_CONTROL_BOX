/*
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
 * Address: 0x3f
 */
 /*
  * 24/10/2017: add Enableinterrupt.h to control all pin for interrupt
  * next,back,reset to interrupt change funtion
  * 
  * 
  */
#include "LedControl.h"
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <EnableInterrupt.h>
//--------------------
#define DIN_MAIN 22
#define SC_MAIN 23
#define CLK_MAIN 24
//--------------------
#define DIN_CARD 25
#define CLK_CARD 26
//--------------------
#define CS_CARD1 27
#define CS_CARD2 28
#define CS_CARD3 29
#define CS_CARD4 30
//--------------------
#define S1 31
#define S2 32
#define S3 33
#define S4 34
#define S5 35
#define S6 36
#define S7 37
#define S8 38
#define S9 39
#define S10 40
#define S11 41
#define S12 42
#define S13 43
#define S14 44
#define S15 45
#define S16 46
#define S17 47
#define S18 48
#define S19 49
#define S20 A0
#define S21 A1
#define S22 A2
#define S23 A3
#define S24 A4
#define S25 A5
#define S26 A6
#define S27 A7
#define S28 A8
#define S29 A9
#define S30 A10
#define S31 A11
#define S32 A12
//------------------------------------------------
#define buzer 4
#define next 5
#define back 6
#define reset 7
//#define frequency 560 //not use change to fix buzzer.
//------------------------------------------------
LiquidCrystal_I2C lcd(0x3F,20,4);
//-----------------------------------------------------
LedControl cl_main=LedControl(DIN_MAIN,CLK_MAIN,SC_MAIN,2);
//-----------------------------------------------------
LedControl cl1=LedControl(DIN_CARD,CLK_CARD,CS_CARD1,4);
LedControl cl2=LedControl(DIN_CARD,CLK_CARD,CS_CARD2,4);
LedControl cl3=LedControl(DIN_CARD,CLK_CARD,CS_CARD3,4);
LedControl cl4=LedControl(DIN_CARD,CLK_CARD,CS_CARD4,4);
//----------------------------------------------------
String inputString = "";         // a string to hold incoming data
boolean stringComplete = false;  // whether the string is complete
//--------------------------------
String inputString1 = "";         // a string to hold incoming data
boolean stringComplete1 = false;  // whether the string is complete
//--------------------------------
String DATA="";
String model="";
unsigned int taget=0;
unsigned int actual=0;
unsigned int step_num=0;
unsigned int step_dem=0;
unsigned int stepping=0;
unsigned int step_dem_arr[50];
//--------------------------------
byte first = 0;
byte second =0; 
byte three = 0;
byte four = 0;
byte five = 0;
byte six = 0;
byte seven = 0;
//--------------------------------
uint32_t last_interrupt_time = 0;
void setup() {
  //initialize lcd 20x4
  lcd.init();
  lcd.clear();
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print("CONTROL BOX MATOME");
  lcd.setCursor(0,1);
  lcd.print("MODEL:");
  lcd.setCursor(0,2);
  lcd.print("DATE:");
  // initialize serial for debug:
  Serial.begin(115200);
 //initialize serial for esp8266
  Serial1.begin(115200);
  // reserve bytes for the inputString:
  inputString.reserve(100);
  inputString1.reserve(500);
  model.reserve(20);
  //inputString1.reserve(500);
  //-----------SETTING LED MAIN------------
  for(int i=0;i<cl_main.getDeviceCount();i++){
    cl_main.setIntensity(i,10);
    cl_main.shutdown(i,true);
    }
  //----------------SETTING LED MODULN 1
  for(int i=0;i<cl1.getDeviceCount();i++){
    cl1.setIntensity(i,10);
    cl1.shutdown(i,true);
    }
  //--------------SETTING LED MODULN 2
    for(int i=0;i<cl2.getDeviceCount();i++){
    cl2.setIntensity(i,10);
    cl2.shutdown(i,true);
    }
  //--------------SETTING LED MODULN 3
      for(int i=0;i<cl3.getDeviceCount();i++){
    cl3.setIntensity(i,10);
    cl3.shutdown(i,true);
    }
    //-------------SETTING LED MODULN 4
      for(int i=0;i<cl4.getDeviceCount();i++){
    cl4.setIntensity(i,10);
    cl4.shutdown(i,true);
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
//-------------------------------
    pinMode(buzer,OUTPUT);
    digitalWrite(buzer,HIGH);//fix to high
    pinMode(next,INPUT_PULLUP);
    pinMode(back,INPUT_PULLUP);
    pinMode(reset,INPUT_PULLUP);
//-------------------------------
    enableInterrupt(next,next_function,CHANGE);
    enableInterrupt(back,back_function,CHANGE);
    enableInterrupt(reset,reset_function,CHANGE);
//-------------connect to server---------
//-----buzzer------bip bip bip-----------
   bip3();
}
void loop() 
{
    Serial1.print("AT+CIPSTATUS\r\n");
    delay(100);
   //----------------------------------------------------------------------------------------
    // print the string when a newline arrives for debug serial0
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
    // CMD RESET LED----------------
    if(inputString.substring(0,3)=="RST") {
    cl1.clearDisplay(0);
    cl1.clearDisplay(1);
    cl1.clearDisplay(2);
    cl1.clearDisplay(3);
    cl1.shutdown(0,true);
    cl1.shutdown(1,true);
    cl1.shutdown(2,true);
    cl1.shutdown(3,true);
    //Serial.println("reset");
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
    uint32_t interrupt_time = millis();
    while(interrupt_time - last_interrupt_time < 10000) {
    if (stringComplete1) {
    Serial.print(inputString1);
    //-------------Processing CMD--------
    int dem;
    //check status esp
    //----------------status-------------
    dem = inputString1.indexOf("STATUS:");
    Serial.print("status=");
    Serial.println(dem);
    if(dem>-1){
    switch(inputString1.charAt(dem+7)){
    case '4'://disconnect TCP
         lcd.clear();
         lcd.setCursor(0,2);lcd.print("TCP:");
         lcd.setCursor(0,3);lcd.print("RECONNECTING.TCP...");
         Serial1.print("AT+CIPSTART=\"TCP\",\"192.168.189.1\",100\r\n");
         delay(1000);
         return;
    case '5'://disconnect AP
         lcd.clear();
         lcd.setCursor(0,2);lcd.print("AP:");
         lcd.setCursor(0,3);lcd.print("RECONNECTING.AP..");
         Serial1.print("AT+CWJAP=\"matome4w\",\"25021993\"\r\n");
         delay(3000);
         return;
    case '2'://disconnect TCP
         lcd.clear();
         lcd.setCursor(0,2);lcd.print("TCP:");
         lcd.setCursor(0,3);lcd.print("RECONNECTING...");
         Serial1.print("AT+CIPSTART=\"TCP\",\"192.168.189.1\",100\r\n");
         delay(1000);
         return;
    case '3'://connected tcp
         delay(500);
         break;
    default:
         lcd.clear();
         lcd.setCursor(0,3);lcd.print("Disconnect esp !");
         return;  
                                         };
              }
    //---------------model-------------
    dem = inputString1.indexOf("MODEL:");
    Serial.print("model=");
    Serial.println(dem);
    if(dem>-1){
       if((inputString1.indexOf("STEP")>-1)&&(inputString1.indexOf("TARGET")>-1)){
       lcd.clear();
       lcd.setCursor(0,3);lcd.print("getting data...");
       int first =  inputString1.indexOf(":");
       int second = inputString1.indexOf("\r\n",first+1);
       DATA=inputString1.substring(first,second);
                                                                                  }
              }
    //-------------------------------------
    dem = inputString1.indexOf("RUN");
    Serial.print("run=");
    Serial.println(dem);
    if(dem>-1){
      if(DATA!=""){
           // PROCESSING DATA HERE
                }
      else    {//thong bao chua co data
              lcd.clear();
              lcd.setCursor(0,3);lcd.print("NO DATA TO RUN");
              Serial1.print("AT+CIPSEND=7\r\n");
              delay(5);
              Serial1.print("NODATA\n");
              delay(500);
              }
        }
    //-------------------------------------
    // clear the string:
    
    inputString1 = "";
    stringComplete1 = false;
                         }
                         
                         interrupt_time = millis();
                         }
last_interrupt_time = interrupt_time;
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
void serialEvent1() {
  while (Serial1.available()) {
    // get the new byte:
    char inChar = (char)Serial1.read();
    // add it to the inputString:
    inputString1 += inChar;
    // if the incoming character is a newline, set a flag
    // so the main loop can do something about it:
    if (inChar == '\n') {
      stringComplete1 = true;
    }
  }
}
//led row from 0->256-----------------------------
int get_row(int num){
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
  if((128<=num)&&(num<=256)){
  num=num-1-128;
  int dem = num/8;
  if(num<64){// Serial.println(dem);
             return dem;}
  else { //Serial.println(dem-8);
         return dem-8;
       }
     }
  
  }
//---------------------------------------------------  
int get_col(int num){
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
//--------------------------------------------------------------------------
int address(int num){
  if((1<=num)&&(num<=64)) return 0;
  if((65<=num)&&(num<=128)) return 1;
  if((129<=num)&&(num<=192)) return 2;
  if((193<=num)&&(num<=256)) return 3;
  }
//---------------------------------------------------------------------------
bool send_get(String command,String condition, const int timeout)
{   String response = "";
    Serial1.print(command+"\r\n");
    delay(5);
    long int time = millis();  
    while( (time+timeout) > millis()){
      while(Serial1.available()){
        char c = Serial1.read();
        response+=c;
      }  
    }
    if(response.indexOf(condition)>-1){
      return 1;
    }
    else return 0;
}
//-------------------------------------------------------------
char check_esp(){
  String response="";
  Serial1.print("AT+CIPSTATUS\r\n");
  delay(5);
  long int time = millis();  
  while( (time+200) > millis()){
      while(Serial1.available()){
        char c = Serial1.read();
        response+=c;
      }  
    }
    int dem = response.indexOf("STATUS:");
    
    if(dem>-1){
      //Serial.println(response.charAt(dem+7));
      return response.charAt(dem+7);
    }
    else return "r";
}
//------------------------------------------------------------------------
void ong1(String str,bool set){
  cl_main.shutdown(address(str.toInt()),false);
  cl_main.setLed(address(str.toInt()),get_row(str.toInt()),get_col(str.toInt()),set);
  }
void ong2(String str,bool set){
  cl_main.shutdown(address(str.toInt()),false);
  cl_main.setLed(address(str.toInt()),get_row(str.toInt()),get_col(str.toInt()),set);
  }
void mau(String str,bool set){
  if(str.toInt()<=256) {cl1.shutdown(address(str.toInt()),false);cl1.setLed(address(str.toInt()),get_row(str.toInt()),get_col(str.toInt()),set);}
  else if(str.toInt()<=512) {cl2.shutdown(address(str.toInt()),false);cl2.setLed(address(str.toInt()-256),get_row(str.toInt()-256),get_col(str.toInt()-256),set);}
       else if(str.toInt()<=768) {cl3.shutdown(address(str.toInt()),false);cl3.setLed(address(str.toInt()-512),get_row(str.toInt()-512),get_col(str.toInt()-512),set);}
            else if(str.toInt()<=1024) {cl4.shutdown(address(str.toInt()),false);cl4.setLed(address(str.toInt()-768),get_row(str.toInt()-768),get_col(str.toInt()-768),set);}  
}
void jigu(String str,bool set){
  if(str.toInt()<=256) {cl1.shutdown(address(str.toInt()),false);cl1.setLed(address(str.toInt()),get_row(str.toInt()),get_col(str.toInt()),set);}
  else if(str.toInt()<=512) {cl2.shutdown(address(str.toInt()),false);cl2.setLed(address(str.toInt()-256),get_row(str.toInt()-256),get_col(str.toInt()-256),set);}
       else if(str.toInt()<=768) {cl3.shutdown(address(str.toInt()),false);cl3.setLed(address(str.toInt()-512),get_row(str.toInt()-512),get_col(str.toInt()-512),set);}
            else if(str.toInt()<=1024) {cl4.shutdown(address(str.toInt()),false);cl4.setLed(address(str.toInt()-768),get_row(str.toInt()-768),get_col(str.toInt()-768),set);}
  }
void matrix(String str,bool set){
  if(str.toInt()<=256) {cl1.shutdown(address(str.toInt()),false);cl1.setLed(address(str.toInt()),get_row(str.toInt()),get_col(str.toInt()),set);}
  else if(str.toInt()<=512) {cl2.shutdown(address(str.toInt()),false);cl2.setLed(address(str.toInt()-256),get_row(str.toInt()-256),get_col(str.toInt()-256),set);}
       else if(str.toInt()<=768) {cl3.shutdown(address(str.toInt()),false);cl3.setLed(address(str.toInt()-512),get_row(str.toInt()-512),get_col(str.toInt()-512),set);}
            else if(str.toInt()<=1024) {cl4.shutdown(address(str.toInt()),false);cl4.setLed(address(str.toInt()-768),get_row(str.toInt()-768),get_col(str.toInt()-768),set);}
  }
bool sw(String str){ 
  return digitalRead(str.toInt());
  }  
//-----------nhan DATA tu server----------
bool get_data()
{   String response = "";
    Serial1.print("AT+CIPSEND=5\r\n");
    delay(5);
    Serial1.print("MODEL");
    long int time = millis();  
    while( (time+2000) > millis()){
      while(Serial1.available()){
        char c = Serial1.read();
        response+=c;
      }  
    }
    //kiem tra DATA tra ve
    if((response.indexOf("MODEL"))>-1&&(response.indexOf("STEP")>-1)&&(response.indexOf("TARGET")>-1)){
       int first = response.indexOf(":");
       int second = response.indexOf("\r\n",first+1);
       DATA=response.substring(first,second);
      return 1;
    }
    else return 0;
}
//-----------------------------------------------------------------
void bip3(void){
   digitalWrite(buzer,LOW);
   delay(200);
   digitalWrite(buzer,HIGH);
   delay(200);
   digitalWrite(buzer,LOW);
   delay(200);
   digitalWrite(buzer,HIGH);
   delay(200);
   digitalWrite(buzer,LOW);
   delay(200);
   digitalWrite(buzer,HIGH);
  }
//-----------function for button-----------------------------------

void next_function(){
  }
void back_function(){
  }
void reset_function(){
  }
