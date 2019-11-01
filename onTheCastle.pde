void onTheCastle()
{
   //most constrain-30 as player move faster than 30 **********************************************************************
  if ((playerX >=800 && playerX < 1250) || (playerX>3800 && playerX<= 4200))
  {
    playerY = constrain(playerY, 300, 1700);
  } else if (playerX >=1250 && playerX <= 3800)
  {
    playerY = constrain(playerY, 300, 725);
  }
  if (playerY >=725 && playerY <= 1700 && playerX<=1250)
  {
    playerX = constrain(playerX, 830, 1230);//-30 as player move faster than 30
  }
  if (playerY >=725 && playerY <= 1700 && playerX >= 3800)
  {
    playerX = constrain(playerX, 3830,4170);
  }
  if(playerY >=300 && playerY < 725)
  {
    playerX = constrain(playerX ,830,4170);
  }
}

