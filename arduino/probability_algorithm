//Probability sequencer algorithm

//define the pattern as an array of 8 bool values:
bool patternArray[8] = {0, 0, 0, 0, 0, 0, 0, 0};

//define an array of 8 random number generators:
int randomArray[8] = {0, 0, 0, 0, 0, 0, 0, 0};

//define the current step number 
int stepCounter = 7;
int stepPosition = 0;

//step active (1 = true) or inactive (0 = false)
bool stepValue = 0;

//value of probability read
int probability = 0;

void setup() {
  //enable serial communication
  Serial.begin(9600);
}

void loop() {
  //advance the sequence to the next step
  stepCounter++;
  
  //go back to the first step (0) at the end of the sequence
  if(stepCounter > 7) {
    stepCounter = 0;
  }

  //define which step to read from the pattern array
  stepPosition = stepCounter;
  stepValue = patternArray[stepPosition];

  //print on the serial monitor current step (active or inactive = 1 or 0)
  Serial.println(stepValue);

  //generate new pattern at the end of the sequence
  if (stepCounter = 7) {
    //read value from potentiometer
    probability = analogRead(A5);

      //generate array of random numbers
      randomArray[0] = random(1023);
      randomArray[1] = random(1023);
      randomArray[2] = random(1023);
      randomArray[3] = random(1023);
      randomArray[4] = random(1023);
      randomArray[5] = random(1023);
      randomArray[6] = random(1023);
      randomArray[7] = random(1023);

      //define pattern (if random number < probability then step = 1)
      for(int i=0; i <=7; i++) {
        if(randomArray[i] < probability) {
            patternArray[i] = 1;
          } else {
            patternArray[i] = 0;
          }
      }
  }

  //advance sequence to next step every 250 milliseconds
  delay(250);
}  
  
