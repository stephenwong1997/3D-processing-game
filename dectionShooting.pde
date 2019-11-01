float dist;
void dectionShooting()
{
  for (int i = 0; i < numberOfAmmo; i++)
  {
    for (int j = 0; j < enemyNumber; j++) {

      if (ammoShot[i] == true)
      {
        dist = dist(bulletX[i], bulletY[i], bulletZ[i], enemyX[j], enemyY[j], enemyZ[j]); 

        if (dist <= 200 && enemyAlife[j] >=2 && j != 10)
        {
          if (glock18con)
          {
            enemyAlife[j] --;
            if (enemyAlife[j] == 1)
            {
              SE_explosion.rewind(); 
              SE_explosion.play();
            }
          }
          if (barretton && enemyAlife[j] >=2 && j != 10)
          {
            enemyAlife[j] = 1;
            SE_explosion.rewind(); 
            SE_explosion.play();
          }


          if (enemyAlife[j] == 1 )
          {
            kill++;
            money+= 50;
          }
          loadStagesDemand();

          if (enemyAlife[j] >2 && j != 10)
          {
            pushMatrix();
            translate(enemyX[j], enemyY[j], enemyZ[j]);
            noStroke();
            fill(255, 0, 0);
            sphere(201);
            popMatrix();
            //          println("BOOM" + enemyAlife[j]);
          }
        }
        if (dist <= 1400 && j == 10)
        {
          if (glock18con)
          {
            enemyAlife[j] --;
            if (enemyAlife[j] == 1)
            {
              SE_explosion.rewind(); 
              SE_explosion.play();
            }
          }
          if (barretton && enemyAlife[j] >=2)
          {
            if(enemyAlife[j] >= 4)
            {
            enemyAlife[j] -= 3;
            }else{
              enemyAlife[j] = 0;
            }
            if (enemyAlife[j] == 1)
            {
              SE_explosion.rewind(); 
              SE_explosion.play();
            }
          }
          if (enemyAlife[j] >2 && j == 10)
          {
            pushMatrix();
            translate(enemyX[j], enemyY[j], enemyZ[j]);
            noStroke();
            fill(255, 0, 0);
            sphere(1403);
            popMatrix();
            //          println("BOOM" + enemyAlife[j]);
          }
        }
      }
    }
  }
}

void loadStagesDemand()
{
  for (int i  = 0; i < enemyNumber; i++)
  {
    //
    if (kill >= killNeed && stage == 2) //kill ? number move to next stage
    {
      BGM01.pause();
      ME_victory.rewind(); 
      ME_victory.play();
      stage = 3;
    }
    if (kill >= killNeed && stage == 4)
    {      
      BGM01.pause();
      ME_victory.rewind();
      ME_victory.play();
      stage = 5;
    }
    if (kill >= killNeed && stage== 6)
    {
      BGM01.pause();
      ME_victory.rewind();
      ME_victory.play();
      stage = 7;
    }
  }
}
//      ME_victoryBoss.rewind(); 
//      ME_victoryBoss.play();

