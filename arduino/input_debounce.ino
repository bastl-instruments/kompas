//INPUT DEBOUNCING

//port mapping clock input pin PB5
#define clockInput PINB&B00100000 

//state bouncing threshold
#define bounce 5

//clock detection variables
bool clockBounce;
bool clockState;
byte clockBounceCounter;

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
}

void loop() {

  //enable clock detection function
  clockDetect();

  //print the state of the clock (1 or 0)
  Serial.println(clockState);

  //just to make the serial monitor smoother
  delay(50);  
}
