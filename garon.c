#include<stdio.h>
/*基本的には状態遷移の手法を記述する感覚*/
int three, five;

void FullThree(){
  three = 3;
  return;
}

void FullFive(){
  five = 5;
  return;
}

void ThreeToFive(){
  int oldfive, oldthree;
  oldfive = five;
  oldthree = three;
  five = oldfive + three;
  three = oldthree - (five - oldfive);
  if(five > 5){
    five = 5;
  }
  if(three < 0){
    three = 0;
  }
}

void FiveToThree(){
  int oldthree, oldfive;
  oldthree = three;
  oldfive = five;
  three = three + five;
  five = oldfive - (three - oldthree);
  if(three > 3){
    three = 3;
  }
  if(five < 0){
    five = 0;
  } 
}


  
int main(){
  int i = 0;
  three = 0;
  five = 0;
  
  while(three != 4 && five != 4){
  }
  printf("garon is %d\n", garon);
}
