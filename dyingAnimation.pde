int castleBreakingDown;
void dyingAnimation()
{
        BGM01.pause();
  if (castleBreakingDown < 300)
  {
    if (castleBreakingDown % 60 == 1)
    { 
      SE_explosion.rewind(); 
      SE_explosion.play();
    }
    vibrating = true;
    castleBreakingDown ++; 
    drawCastle();
    onTheCastle();
  } else {
    if (playerZ >= 300)
    {
      playerZ -= 10;
    }
  }
  for (int i = 0; i < enemyNumber; i++)
  {
    enemySpeed[i] = 0;
  }

  pushMatrix(); 
  translate(3025, 5000, 2000);
  textSize(900);
  rotateX(radians(270));
  rotateY(radians(180));
  fill(255, 0, 0);
  text("YOU LOSE", 0, 0);
  translate(0, 900, 0);
  textSize(400);
  text("Press O to restart", 0, 0);
  translate(0, 400, 0);
  text("Your money will not be resetted", 0, 0);
  translate(0, 400, 0);
  text("L to leave the game", 0, 0);
  popMatrix();

  if (keyPressed)
  {
    if (key == 'o' || key == 'O')
    {
      setup();
    }

    if (key == 'l' || key == 'L')
    {
      exit();
    }
  }
}

