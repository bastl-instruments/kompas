//PATTERN GENERATORS
//Longitude
void generateArray0() {
  if(generate0) {
    for(int i=0; i<length0; i++) {
      randomArray0[i] = random(1011);
      //Serial.print(randomArray0[i]);     
    }  
    lastGenerate0 = millis();
    digitalWrite(led0, HIGH);  
    generate0 = false;
  }
}
//Altitude
void generateArray1() {
  if(generate1) {
    for(int i=0; i<length1; i++) {
      randomArray1[i] = random(1011);
      //Serial.print(randomArray1[i]);      
    } 
    lastGenerate1 = millis();
    digitalWrite(led1, HIGH);   
    generate1 = false;
  }
}
//Latitude
void generateArray2() {
  if(generate2) {
    for(int i=0; i<length2; i++) {
      randomArray2[i] = random(1011);
      //Serial.print(randomArray2[i]);      
    } 
    lastGenerate2 = millis();
    digitalWrite(led2, HIGH);     
    generate2 = false;
  }
}



//Clock and Reset input detection
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


//un-comment for turning CV inputs into individual reset inputs!
/*
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
}*/
