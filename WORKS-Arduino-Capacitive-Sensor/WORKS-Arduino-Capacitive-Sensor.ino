#include <CapacitiveSensor.h>

CapacitiveSensor   cs_11_12 = CapacitiveSensor(11,12);
CapacitiveSensor   cs_4_9 = CapacitiveSensor(4,9); // 1M resistor between pins 4 & 8, pin 8 is sensor pin, add a wire and or foil
CapacitiveSensor   cs_13_10 = CapacitiveSensor(13,10);
CapacitiveSensor   cs_2_3 = CapacitiveSensor(2,3);
//int speakerPin = 6;

void setup()                    
{
   cs_11_12.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(5,OUTPUT);
   /*pinMode(6,OUTPUT);
   pinMode(7,OUTPUT);
   pinMode(8,OUTPUT); */

   cs_4_9.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(6, OUTPUT); 

   cs_13_10.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(7,OUTPUT);

   cs_2_3.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(8,OUTPUT);  
   
}

void loop()                    
{
 long sensor1 =  cs_11_12.capacitiveSensor(50);

    Serial.println(sensor1);  // print sensor output 
   if(sensor1 >= 1000)
   {
    digitalWrite(5,HIGH);
   }
   else{
    digitalWrite(5,LOW);
   }  

  long sensor2 =  cs_4_9.capacitiveSensor(50);

   Serial.println(sensor2);  // print sensor output 
   if(sensor2 >= 1000)
   { tone(6, 1000, 200);
    
    digitalWrite(6,HIGH);
   }
     else {
    noTone(6);
    digitalWrite(6,LOW);
    
   }
    
    
   /*}
    digitalWrite(6,HIGH);
   }
   else{
    digitalWrite(6,LOW);
   }  */

  
 
  long sensor3 =  cs_13_10.capacitiveSensor(50);

    Serial.println(sensor3);  // print sensor output 
   if(sensor3 >= 1000)
   {
    digitalWrite(7,HIGH);
   }
   else{
    digitalWrite(7,LOW);
   } 

  long sensor4 =  cs_2_3.capacitiveSensor(50);

    Serial.println(sensor4);  // print sensor output 
   if(sensor4 >= 1000)
   {
    digitalWrite(8,HIGH);
   }
   else{
    digitalWrite(8,LOW);
   }  
}
