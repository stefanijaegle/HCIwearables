#include <CapacitiveSensor.h>

CapacitiveSensor   cs_4_9 = CapacitiveSensor(1,3);
//CapacitiveSensor   cs_9_11 = CapacitiveSensor(9,11); // 1M resistor between pins 4 & 8, pin 8 is sensor pin, add a wire and or foil
//CapacitiveSensor   cs_7_9 = CapacitiveSensor(2,11);
//CapacitiveSensor   cs_8_10 = CapacitiveSensor(1,12);


void setup()                    
{
   cs_4_9.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(5,OUTPUT);
   pinMode(6,OUTPUT);
   pinMode(7,OUTPUT);
   pinMode(8,OUTPUT);

   /*cs_9_11.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(6,OUTPUT); 

   cs_2_11.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(7,OUTPUT);

   cs_1_12.set_CS_AutocaL_Millis(0xFFFFFFFF);// turn off autocalibrate on channel 1 - just as an example
   Serial.begin(9600);
   pinMode(8,OUTPUT);  */
   
}

void loop()                    
{
 long sensor1 =  cs_4_9.capacitiveSensor(50);

    Serial.println(sensor1);  // print sensor output 
   if(sensor1 >= 1000)
   {
    digitalWrite(5,HIGH);
   }
   else{
    digitalWrite(5,LOW);
   }  

  //long sensor1 =  cs_9_11.capacitiveSensor(50);

    Serial.println(sensor1);  // print sensor output 
   if(sensor1 >= 1000)
   {
    digitalWrite(6,HIGH);
   }
   else{
    digitalWrite(6,LOW);
   }  
 
  //long sensor3 =  cs_2_11.capacitiveSensor(50);

    Serial.println(sensor1);  // print sensor output 
   if(sensor1 >= 1000)
   {
    digitalWrite(7,HIGH);
   }
   else{
    digitalWrite(7,LOW);
   } 

  //long sensor4 =  cs_1_12.capacitiveSensor(50);

    Serial.println(sensor1);  // print sensor output 
   if(sensor1 >= 1000)
   {
    digitalWrite(8,HIGH);
   }
   else{
    digitalWrite(8,LOW);
   }  
}
