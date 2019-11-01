void animation()
{
  for (int i = 0; i < enemyNumber; i++)
  {
    if (enemyAlife[i] == 1 && i != 10) {
      enemyTransparency[i] -= 1;
      enemyExplosion[i] += 2.5;
      if (enemyExplosion[i] >= 450 && i != 10)
      {
        enemyTransparency[i] = 100;
        enemyAlife[i] = 0;
        enemyTransparency[i] = 100;
        if (enemyY[i] >= deadLine)
        {
          enemyY[i] = 10000;
        }
      }
    }
    if (enemyAlife[10] == 1) { //when Boss are killed
      enemyTransparency[10] -= 0.05;
      enemyExplosion[10] += 2.5;
              for(int k = 0; k < enemyNumber - 1; k++)
        {
          enemyAlife[k] = 1;
        }
      if (enemyExplosion[10] >= 10000)
      {
        enemyAlife[10] = 0;
        stage = 9;
        BGM01.pause();
        ME_victoryBoss.rewind();
        ME_victoryBoss.play();
        println("WIN BOSS");
        //normal monster animation

//        if (enemyAlife[i] == 1 && i != 10) {
//          enemyTransparency[i] -= 1;
//          enemyExplosion[i] += 2.5;
//          if (enemyExplosion[i] >= 450 && i != 10)
//          {
//            enemyTransparency[i] = 100;
//            enemyAlife[i] = 0;
//            enemyTransparency[i] = 100;
//            if (enemyY[i] >= deadLine)
//            {
//              enemyY[i] = 10000;
//            }
//          }
//        }
      }
    }
  }
}
