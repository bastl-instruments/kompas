//KOMPASS Thesis

/*  3 voices of probability based sequencers;
    Individual reset inputs, pattern change on knob tweak;
 */

//set trigger length (ms) and input tollerance
#define trigLength 5
#define unbounce 5

//Port mapping
#define clockIn PINB&B00100000
#define resetIn PINB&B00010000

#define resetIn0 PINC&B00000001
#define resetIn1 PINC&B00000010
#define resetIn2 PINC&B00000100

#define trigOut0 PINB&B00001000
#define trigOut1 PINB&B00000100
#define trigOut2 PINB&B00000010

//unused pins
#define PB0 PINB&B00000001
#define PD7 PIND&B10000000

int clock_led = 2;
int reset_led = 4;
int led0 = 3;
int led1 = 5;
int led2 = 6;

//pattern variables
int step0 = 16;
int step1 = 16;
int step2 = 16;
int pos0 = 15;
int pos1 = 15;
int pos2 = 15;
bool stepValue0 = 0;
bool stepValue1 = 0;
bool stepValue2 = 0;
bool patternArray0[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
bool patternArray1[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
bool patternArray2[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

int randomArray0[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int randomArray1[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int randomArray2[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int prob0 = 0;
int prob1 = 0;
int prob2 = 0;
int prevProb0 = 0;
int prevProb1 = 0;
int prevProb2 = 0;

unsigned long lastClock = 0;
unsigned long lastReset = 0;
unsigned long lastReset0 = 0;
unsigned long lastReset1 = 0;
unsigned long lastReset2 = 0;

bool clockJump;
bool resetJump;
bool reset0Jump;
bool reset1Jump;
bool reset2Jump;

bool clockState;
bool resetState;
bool reset0State;
bool reset1State;
bool reset2State;

byte clock_bounce_counter;
byte reset_bounce_counter;
byte reset0_bounce_counter;
byte reset1_bounce_counter;
byte reset2_bounce_counter;


//trigger inputs functions
void deReset() {
  resetState = false;
  if(!(resetIn)) {resetJump = true;}
  if(resetJump) {
    if(resetIn) {
      reset_bounce_counter++;
    } else {
      reset_bounce_counter = 0;
    }
    if(unbounce == reset_bounce_counter) {
      resetState = true;
      resetJump = false;
    }
  }
}

void deClock() {
  clockState = false;
  if(!(clockIn)) {clockJump = true;}
  if(clockJump) {
    if(clockIn) {
      clock_bounce_counter++;
    } else {
      clock_bounce_counter = 0;
    }
    if(unbounce == clock_bounce_counter) {
      clockState = true;
      clockJump = false;
    }
  }
}

void deReset0() {
  reset0State = false;
  if(!(resetIn0)) {reset0Jump = true;}
  if(reset0Jump) {
    if(resetIn0) {
      reset0_bounce_counter++;
    } else {
      reset0_bounce_counter = 0;
    }
    if(unbounce == reset0_bounce_counter) {
      reset0State = true;
      reset0Jump = false;
    }
  }
}

void deReset1() {
  reset1State = false;
  if(!(resetIn1)) {reset1Jump = true;}
  if(reset1Jump) {
    if(resetIn1) {
      reset1_bounce_counter++;
    } else {
      reset1_bounce_counter = 0;
    }
    if(unbounce == reset1_bounce_counter) {
      reset1State = true;
      reset1Jump = false;
    }
  }
}

void deReset2() {
  reset2State = false;
  if(!(resetIn2)) {reset2Jump = true;}
  if(reset2Jump) {
    if(resetIn2) {
      reset2_bounce_counter++;
    } else {
      reset2_bounce_counter = 0;
    }
    if(unbounce == reset2_bounce_counter) {
      reset2State = true;
      reset2Jump = false;
    }
  }
}

void setup() {
  Serial.begin(9600);

  //DDRC|=B00000000;
  //PORTC|B00000000;
  
  DDRB = B11001110;
  PORTB|B00000001;
  
  DDRD = B11111100;
  DDRD = DDRD | B11111100;
  PORTD|B0000000;
  
  pinMode(clock_led, OUTPUT);
  pinMode(reset_led, OUTPUT);
  
  pinMode(led0, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
}

void loop() {
  
  deClock();
  deReset();
  deReset0();
  deReset1();
  deReset2();


  //global & individual resets
  if(resetState) {
    lastReset = millis();
    digitalWrite(reset_led, HIGH);
    step0 = 16;
    step1 = 16;
    step2 = 16;
  }
  
  if(reset0State) {
    lastReset0 = millis();
    digitalWrite(led0, HIGH);
    step0 = 16;
  }
  if(reset1State) {
    lastReset1 = millis();
    digitalWrite(led1, HIGH);
    step1 = 16;
  }
  if(reset2State) {
    lastReset2 = millis();
    digitalWrite(led2, HIGH);
    step2 = 16;
  }  
  

  if(clockState) { 
    lastClock = millis();
    step0++;
    step1++;
    step2++;

    digitalWrite(clock_led, HIGH);

    if(step0 > 15) {
      step0 = 0;
    }
    if(step1 > 15) {
      step1 = 0;
    }
    if(step2 > 15) {
      step2 = 0;
    }
   
    pos0 = step0;
    pos1 = step1;
    pos2 = step2;
    stepValue0 = patternArray0[pos0];
    stepValue1 = patternArray1[pos1];
    stepValue2 = patternArray2[pos2];

    if(stepValue0) {
      PORTB|=B00001000;
    }
    if(stepValue1) {
      PORTB|=B00000100;
    }
    if(stepValue2) {
      PORTB|=B00000010;
    }

    prob0 = analogRead(A3);
    prob1 = analogRead(A4);
    prob2 = analogRead(A5);
  }
 
  if(millis() >= lastClock + trigLength) {
    PORTB=B00000001;
    digitalWrite(clock_led, LOW);
  }

  
  // voice "X" 
  if(prob0 > 21) {
    if(prob0 > (prevProb0 + 2) || prob0 < (prevProb0 - 2)) {
      prevProb0 = prob0;
      
      randomArray0[0] = random(999);
      randomArray0[1] = random(999);
      randomArray0[2] = random(999);
      randomArray0[3] = random(999);
      randomArray0[4] = random(999);
      randomArray0[5] = random(999);
      randomArray0[6] = random(999);
      randomArray0[7] = random(999);
      randomArray0[8] = random(999);
      randomArray0[9] = random(999);
      randomArray0[10] = random(999);
      randomArray0[11] = random(999);
      randomArray0[12] = random(999);
      randomArray0[13] = random(999);
      randomArray0[14] = random(999);
      randomArray0[15] = random(999);

      for(int i=0; i < 16; i++) {
      if(randomArray0[i] < (prob0 - 21)) {
          patternArray0[i] = 1;
        } else {
          patternArray0[i] = 0;
        }
      }
    }
  } else {
    for(int i=0; i < 16; i++) {
      patternArray0[i] = 0;   
    }
    prevProb0 = 0;
  }


  // voice "Y"
  if(prob1 > 21) {
    if(prob1 > (prevProb1 + 2) || prob1 < (prevProb1 - 2)) {
      prevProb1 = prob1;
      
      randomArray1[0] = random(999);
      randomArray1[1] = random(999);
      randomArray1[2] = random(999);
      randomArray1[3] = random(999);
      randomArray1[4] = random(999);
      randomArray1[5] = random(999);
      randomArray1[6] = random(999);
      randomArray1[7] = random(999);
      randomArray1[8] = random(999);
      randomArray1[9] = random(999);
      randomArray1[10] = random(999);
      randomArray1[11] = random(999);
      randomArray1[12] = random(999);
      randomArray1[13] = random(999);
      randomArray1[14] = random(999);
      randomArray1[15] = random(999);

      for(int i=0; i < 16; i++) {
      if(randomArray1[i] < (prob1 - 21)) {
          patternArray1[i] = 1;
        } else {
          patternArray1[i] = 0;
        }
      }
    }
  } else {
    for(int i=0; i < 16; i++) {
      patternArray1[i] = 0;   
    }
    prevProb1 = 0;
  }

  
    // voice "Z"
  if(prob2 > 21) {
    if(prob2 > (prevProb2 + 2) || prob2 < (prevProb2 - 2)) {
      prevProb2 = prob2;

      randomArray2[0] = random(999);
      randomArray2[1] = random(999);
      randomArray2[2] = random(999);
      randomArray2[3] = random(999);
      randomArray2[4] = random(999);
      randomArray2[5] = random(999);
      randomArray2[6] = random(999);
      randomArray2[7] = random(999);
      randomArray2[8] = random(999);
      randomArray2[9] = random(999);
      randomArray2[10] = random(999);
      randomArray2[11] = random(999);
      randomArray2[12] = random(999);
      randomArray2[13] = random(999);
      randomArray2[14] = random(999);
      randomArray2[15] = random(999);

      for(int i=0; i < 16; i++) {
      if(randomArray2[i] < (prob2 - 21)) {
          patternArray2[i] = 1;
        } else {
          patternArray2[i] = 0;
        }
      }
    }
  } else {
    for(int i=0; i < 16; i++) {
      patternArray2[i] = 0;   
    }
    prevProb2 = 0;
  }

  
  //turn off reset LEDs 
  if(millis() >= lastReset + trigLength) {
    digitalWrite(reset_led, LOW);
  }
  if(millis() >= lastReset0 + trigLength) {
  digitalWrite(led0, LOW);
  }
  if(millis() >= lastReset1 + trigLength) {
    digitalWrite(led1, LOW);
  }
  if(millis() >= lastReset2 + trigLength) {
    digitalWrite(led2, LOW);
  }

}
