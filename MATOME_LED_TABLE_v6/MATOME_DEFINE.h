#ifndef MATOME_DEFINE_H
#define MATOME_DEFINE_H
//---------khai bao version cho trinh bien dich---------
#define version_ 3
//---------------------
#include <Arduino.h>
//------CARD MAIN----------
#define DIN_MAIN 22
#define SC_MAIN 23
#define CLK_MAIN 24
//--------------------
#define DIN_CARD 25
#define CLK_CARD 26
//-------CHIP SELECT CARD LED----
#define CS_CARD1 27
#define CS_CARD2 28
#define CS_CARD3 29
#define CS_CARD4 30
//-------SWICHT JIGU---
#define S1 31
#define S2 32
#define S3 33
#define S4 34
#define S5 35
#define S6 36
#define S7 37
#define S8 38
//-----------
#define S9 39
#define S10 40
#define S11 41
#define S12 42
#define S13 43
#define S14 44
#define S15 45
#define S16 46
//-----------
#define S17 47
#define S18 48
#define S19 49
#define S20 A0
#define S21 A1
#define S22 A2
#define S23 A3
#define S24 A4
//------------
#define S25 A5
#define S26 A6
#define S27 A7
#define S28 A8
#define S29 A9
#define S30 A10
#define S31 A11
#define S32 A12
//------------------------------------------------
#ifndef version_
  #define version_ 2
#endif  
#if version_ == 3
 #define buzzer_ 2
 #define next_ "3"
 #define back_ "4"
 #define home_ "5"
 #define reset_ "6"
#else
 #define buzzer_ 4
 #define next_ "5"
 #define back_ "6"
 #define home_ "7"
 #define reset_ "8"
#endif
//----------------------
//----------------------------------------------------
String inputString = "";         // a string to hold incoming data
boolean stringComplete = false;  // whether the string is complete
//--------------------------------
String DATA="";// var to save data receive from server
String model="";// name model
String findAP="";// string search AP
//--------------------------------
unsigned int target=0;
unsigned int actual=0;
unsigned int step_num=0;
unsigned int step_dem=0;
unsigned int stepping=0;
unsigned int step_dem_arr[200];
//--------------------------------
byte first = 0;
byte second =0; 
byte three = 0;
byte four = 0;
byte five = 0;
byte six = 0;
byte seven = 0;
//--------------------------------
bool dem_button=false;
bool debug=true;
bool old=false;
//-------------------------------
String SSID_ = "\"MATOME\"";
String PASSWORD_ = "\"25021993\"";
#endif
