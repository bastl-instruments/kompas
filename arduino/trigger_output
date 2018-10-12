//TRIGGER OUTPUT

//port mapping clock input pin PB5
#define clockInput PINB&B00100000 
//port mapping trigger output pin PB3
#define trigOut0 PINB&B00001000

//state bouncing threshold
#define bounce 5

//legth of trigger signal (ms)
#define trigLength 5

//clock detection variables
bool clockBounce;
bool clockState;
byte clockBounceCounter;

//keep time of last clock State
unsigned long lastClock = 0;

//detect only one clock signal for every pulse received
void clockDetect() {
  clockState = false;
  if(!(clockInput)) {clockBounce = true;}
  if(clockBounce) {
    if(clockInput) {
      clockBounceCounter++;
    } else {
      clockBounceCounter = 0;
    }
    if(bounce == clockBounceCounter) {
      clockState = true;
      clockBounce = false;
    }
  }
}

void setup() {
  Serial.begin(9600);

  //set port PB5 as input
  DDRB = B11011111;  
  //set port PB3 output as LOW
  PORTB|B00000001;
}

void loop() {

  //enable clock detection function
  clockDetect();

  //when a clock signal is detected:
  if(clockState) {
    //save time of last clock state
    lastClock = millis();
    //set pin PB3 as HIGH (begin of trigger signal)
    PORTB|=B00001000;   
  }

   //set pin PB3 as LOW after it reaches its length (end of trigger signal)
   if(millis() >= lastClock + trigLength) {
    PORTB=B00000001; 
   }
}   
