float ballY=6000, ballZ=800, speedBall = 0;

void drawEnemy()
{


  //  ballY -= 5;
  //  speedBall += 0.5;
  //  ballZ -= speedBall;
  //  if(ballZ<100)
  //  {speedBall = speedBall*-1;
  //  }

  for (int i = 0; i < enemyNumber; i++)
  {

    pushMatrix();
    translate(enemyX[i], enemyY[i], enemyZ[i]);
    if (enemyAlife[i] >= 2 && enemyAlife[i] != 1)//only load when enemy shows // move it forward
    {

      enemyY[i] -= enemySpeed[i];
      enemyZ[i] += enemySpeedZ[i];
      enemySpeedZ[i] -= enemyDropSpeed;
      if (enemyZ[i] <= 200 && i != 10)
      {
        enemySpeedZ[i] *= -1;
      } else if (enemyZ[10] <= 1400 && i == 10)
      {
        enemySpeedZ[10] *= -1;
        enemySpeedZ[10] = constrain(enemySpeedZ[10], -30, 30);
      }
      if (enemyY[i] < deadLine) // hit the castle
      {
        enemyAlife[i] = 1;
        enemyY[i] = deadLine;//it dies,so it won't move on, and (animation)when Y <=1400 ... 
        vibrating = true;
        SE_explosion.rewind(); 
        SE_explosion.play();
        castleLife --;
      }
    }      
    popMatrix();
    
    pushMatrix();
    translate(0,0,2);
    fill(130);
    ellipse(enemyX[i], enemyY[i], 2*enemyShadow[i] -enemyZ[i]/3, 2*enemyShadow[i] - enemyZ[i]/3);    
    popMatrix();
    
    
    pushMatrix();
    translate(enemyX[i], enemyY[i], enemyZ[i]);



    rotateX(radians(270));
    rotateY(radians(180));
    //  monster02.scale(1.2,1.2,1.2);
    if (enemyAlife[i] >= 2) {//appear
      shape(monster[i]);
    } else if (enemyAlife[i] == 1) { //die
      fill(255, enemyTransparency[i]);
      noStroke();
      sphere(enemyExplosion[i]);
    }
    popMatrix();
  }
}

