void startLevel()
{
  if (stage == 2) //level 1
  { 
    if (round(random(80)) == 1)
    {
      for (int i = 0; i < enemyNumber-1; i ++)
      {        
        killNeed = round(random(20, 25));
        if (enemyAlife[i] <= 1)
        {
          enemyX[i] = random(1250+200, 3800-200);
          enemyY[i] = 11000;  // normal 12000   
          enemyZ[i] = 600;
          enemySpeedZ[i] = 0;
          enemySpeed[i] = 18; //normal 12
          enemyAlife[i] = 2;
          enemyTransparency[i] = 100; 
          enemyExplosion[i] = 200;
          enemyShadow[i] = 200;
          break;
        }
      }
    }
  }


  if (stage == 4)
  {
    if (round(random(80)) == 1)
    {
      for (int i = 0; i < enemyNumber-1; i ++)
      {         
        killNeed = round(random(20, 30));
        if (enemyAlife[i] <= 1)
        {
          enemyX[i] = random(1250+200, 3800-200);
          enemyY[i] = 11000;  // normal 12000   
          enemyZ[i] = 600;
          enemySpeedZ[i] = 0;
          enemySpeed[i] = 25; //normal 12
          enemyAlife[i] = 5;
          enemyTransparency[i] = 100; 
          enemyExplosion[i] = 200;
          enemyShadow[i] = 200;
          break;
        }
      }
    }
  }

  if (stage == 6)
  {
    if (round(random(50)) == 1)
    {
      for (int i = 0; i < enemyNumber-1; i ++)
      {        
        killNeed = round(random(15, 25));
        if (enemyAlife[i] <= 1)
        {
          enemyX[i] = random(1250+200, 3800-200);
          enemyY[i] = 11000;  // normal 12000   
          enemyZ[i] = 600;
          enemySpeedZ[i] = 0;
          enemySpeed[i] = 40; //normal 12
          enemyAlife[i] = 2; //2 =  (life = 1)
          enemyTransparency[i] = 100; 
          enemyExplosion[i] = 200;
          enemyShadow[i] = 200;
          break;
        }
      }
    }
  }

  if (stage == 8) // Boss level
  {
    if (bossLoadOnce)
    {
      enemySpeed[10] = 0;
      bossMaxBlood = 15000;
      enemyAlife[10] = bossMaxBlood;
      enemyY[10] = 7000;
      enemyX[10] = 2525;
      enemyZ[10] = 2000;
      enemyExplosion[10] = 1400;
      enemyShadow[10] = 1400;
      bossLoadOnce = false;
    }
    if (round(random(60)) == 1)
    {
      for (int i = 0; i < enemyNumber-1; i ++)
      {        
        killNeed = 999999;// avoid winning before kill boss
        if (enemyAlife[i] <= 1)
        {
          enemyX[i] = random(1250+200, 3800-200);
          enemyY[i] = 11000;  // normal 12000   
          enemyZ[i] = 600;
          enemySpeedZ[i] = 0;
          if(round(random(1,2)) == 1)
          {
          enemySpeed[i] = 23; //normal 12
          enemyAlife[i] = 8;
          }else{
          enemySpeed[i] = 40; //normal 12
          enemyAlife[i] = 1;
          }
          enemyTransparency[i] = 100; 
          enemyExplosion[i] = 200;
          enemyShadow[i] = 200;
          break;
        }
      }
    }
  }
}

