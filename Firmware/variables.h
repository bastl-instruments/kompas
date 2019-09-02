#ifndef _VARIABLES_H_
#define _VARIABLES_H_


//pattern lengths (Longitude, Altitude, Latitude)
int length0 = 32;
int length1 = 32;
int length2 = 32;

bool patternArray0[32];
bool patternArray1[32];
bool patternArray2[32];

int randomArray0[32];
int randomArray1[32];
int randomArray2[32];

//cv values
int cv0 = 0;
int cv1 = 0;
int cv2 = 0;

//pot positions 
int pot0 = 0;
int pot1 = 0;
int pot2 = 0;

int prevPot0;
int prevPot1;
int prevPot2;

//euclidean parameters (Longitude)
int noSteps0;

int step0 = 0;
int step1 = 0;
int step2 = 0;

int pos0 = 0;
int pos1 = 0;
int pos2 = 0;

bool stepValue0 = 0;
bool stepValue1 = 0;
bool stepValue2 = 0;

int prob0 = 0;
int prob1 = 0;
int prob2 = 0;

int prevProb0 = 0;
int prevProb1 = 0;
int prevProb2 = 0;

unsigned long lastGenerate0 = 0;
unsigned long lastGenerate1 = 0;
unsigned long lastGenerate2 = 0;

unsigned long lastClock = 0;
unsigned long lastReset = 0;

//un-comment for turning CV IN into individual reset inputs!!!
//unsigned long lastReset0 = 0;
//unsigned long lastReset1 = 0;
//unsigned long lastReset2 = 0;

bool clockJump;
bool resetJump;
//un-comment for turning CV inputs into individual reset inputs!
//bool reset0Jump;
//bool reset1Jump;
//bool reset2Jump;

bool clockState;
bool resetState;
//un-comment for turning CV inputs into individual reset inputs!
//bool reset0State;
//bool reset1State;
//bool reset2State;

byte clock_bounce_counter;
byte reset_bounce_counter;
//un-comment for turning CV inputs into individual reset inputs!
//byte reset0_bounce_counter;
//byte reset1_bounce_counter;
//byte reset2_bounce_counter;

bool generate0;
bool generate1;
bool generate2;

#endif
