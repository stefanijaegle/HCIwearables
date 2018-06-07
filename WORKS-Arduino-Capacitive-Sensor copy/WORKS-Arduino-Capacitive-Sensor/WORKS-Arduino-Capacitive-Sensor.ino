#include <CapacitiveSensor.h>

CapacitiveSensor   cs_1_3 = CapacitiveSensor(1,3);
CapacitiveSensor   cs_9_11 = CapacitiveSensor(9,11); // 1M resistor between pins 4 & 8, pin 8 is sensor pin, add a wire and or foil
//CapacitiveSensor   cs_7_9 = CapacitiveSensor(2,11);
//CapacitiveSensor   cs_8_10 = CapacitiveSensor(1,12);


void setup()                    
{
   cs_1_3.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(2,OUTPUT);

   cs_9_11.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(10,OUTPUT);

   /*cs_2_11.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(7,OUTPUT);

   cs_1_12.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(8,OUTPUT); */
   
}

void loop()                    
{
 long sensor1 =  cs_1_3.capacitiveSensor(50);

    Serial.println(sensor1);  // print sensor output 
   if(sensor1 >= 1000)
   {
    digitalWrite(2,HIGH);
   }
   else{
    digitalWrite(2,LOW);
   }  

  long sensor2 =  cs_9_11.capacitiveSensor(50);

    Serial.println(sensor2);  // print sensor output 
   if(sensor2 >= 1000)
   {
    digitalWrite(10,HIGH);
   }
   else{
    digitalWrite(10,LOW);
   } 

  /*long sensor3 =  cs_2_11.capacitiveSensor(50);

    Serial.println(sensor3);  // print sensor output 
   if(sensor3 >= 1000)
   {
    digitalWrite(7,HIGH);
   }
   else{
    digitalWrite(7,LOW);
   } 

  long sensor4 =  cs_1_12.capacitiveSensor(50);

    Serial.println(sensor4);  // print sensor output 
   if(sensor4 >= 1000)
   {
    digitalWrite(8,HIGH);
   }
   else{
    digitalWrite(8,LOW);
   }  */
}
