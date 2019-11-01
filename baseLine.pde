int addMoney, addKill;
int bossMaxBlood;
float bossBloodBoxWidth;
void baseLine()
{ 
  pushMatrix(); 
  fill(0, 255, 0);
  rect(0, 0, 1500, 10000);
  //0,0,0
  translate(1500, 750, 0);
  fill(255, 238, 153);
  rect(0, 0, 2000, 9250);
  //1500,750,0
  translate(2000, -750, 0);
  fill(0, 255, 0);
  rect(0, 0, 1500, 10000);
  //3500,0,0
  translate(-2000, 0, 0);
  fill(0, 255, 0);
  rect(0, 0, 2000, 750); 
  popMatrix();

  pushMatrix(); 
  translate(2525, deadLine, 10);
  noStroke();
  fill(255, 0, 0);
  box(2550, 10, 10);
  popMatrix();


  pushMatrix(); // show ammo number
  translate(6500, 5000, 1500);
  textSize(400);
  rotateX(radians(270));
  rotateY(radians(180));
  fill(255, 0, 0, 150);
  ammoNumberShow = 0;
  for (int i = 0; i< numberOfAmmo; i++)
  {
    if (ammoShot[i])
    {
      ammoNumberShow ++;
    }
  }
  if (numberOfAmmo - ammoNumberShow <= 0 || reloadingR)
  {  
    text("Reloading...", 0, 0);
  } else {
    text("Ammo:" + (numberOfAmmo - ammoNumberShow) + "/" + numberOfAmmo, 0, 0);
  }
  translate(0, -350);
  text("Castle Life:" + castleLife, 0, 0);
  popMatrix();
  
  
  //boss blood line
//  enemyAlife[10] //current blood
//  bossMaxBlood; // 15000
//  println(enemyAlife[10]);
//  println(bossMaxBlood);
if(stage == 8)
{
  bossBloodBoxWidth = map(enemyAlife[10],0,bossMaxBlood,0,6000);
  pushMatrix();
  translate(2525,7000,4000);
//  float bossBloodPercent = enemyAlife[10]+0.5/bossMaxBlood;

  fill(255,100,100);

  box(bossBloodBoxWidth,100,250);
  popMatrix();
}


  loadStagesEffect();

  //  pushMatrix();
  //  translate(2500,7500);
  //  stroke(0);
  //  sphereDetail(5);
  //  fill(255);
  //  sphere(12000);
  //  popMatrix();

  //  for (int x = 0; x<=1200; x+=35)//not x coordinate,draw x directional lines
  //  {
  //    stroke(150);
  //    line(0, x, 0, 1200, x, 0);
  //  }
  //  for (int y = 0; y<=2500; y+=35)//same as x
  //  {
  //    stroke(150);
  //    line(y, 0, 0, y, 2500, 0);
  //  }
} 

void loadStagesEffect()
{ 
  if (stage == 3)
  {
    //monster explosion effect
    for (int i = 0; i < enemyNumber; i++)
    {
      if (enemyAlife[i] >= 2)
      {
        enemyAlife[i] = 1;
      }
    }

    //textes effect
    if (addKill < kill)
    {
      addKill ++;
    }
    if (addMoney < money)
    {
      addMoney += 25;
    }
    pushMatrix(); 
    translate(3025, 5000, 2000);
    textSize(400);
    rotateX(radians(270));
    rotateY(radians(180));
    text("WAVE 1 CLEAR", 0, 0);
    translate(-500, 450);
    text("Kills:" + kill, 0, 0);
    translate(0, 450);
    text("Money: $" + addMoney, 0, 0);    
    translate(0, 450);
    text("Press P to Level 2", 0, 0);
    translate(-800, 450);
    text("Monster's life + 2 next level", 0, 0);
    popMatrix();
  }
  if (stage == 5)
  {
    //monster explosion effect
    for (int i = 0; i < enemyNumber; i++)
    {
      if (enemyAlife[i] >= 2)
      {
        enemyAlife[i] = 1;
      }
    }

    //textes effect
    if (addKill < kill)
    {
      addKill ++;
    }
    if (addMoney < money)
    {
      addMoney += 25;
    }
    pushMatrix(); 
    translate(3025, 5000, 2000);
    textSize(400);
    rotateX(radians(270));
    rotateY(radians(180));

    text("WAVE 2 CLEAR", 0, 0);
    translate(-500, 450);
    text("Kills:" + kill, 0, 0);
    translate(0, 450);
    text("Money: $" + addMoney, 0, 0);    
    translate(0, 450);
    text("Press P to Level 3", 0, 0);
    translate(-800, 450);
    text("Monster move REALLY FAST next turn!", 0, 0);
    popMatrix();
  }
  if (stage == 7)
  {
    //monster explosion effect
    for (int i = 0; i < enemyNumber; i++)
    {
      if (enemyAlife[i] >= 2)
      {
        enemyAlife[i] = 1;
      }
    }

    //textes effect
    if (addKill < kill)
    {
      addKill ++;
    }
    if (addMoney < money)
    {
      addMoney += 25;
    }
    pushMatrix(); 
    translate(3025, 5000, 2000);
    textSize(400);
    rotateX(radians(270));
    rotateY(radians(180));

    text("WAVE 3 CLEAR", 0, 0);
    translate(-500, 450);
    text("Kills:" + kill, 0, 0);
    translate(0, 450);
    text("Money: $" + addMoney, 0, 0);    
    translate(0, 450);
    text("Press P to Level 4(Boss)", 0, 0);
    translate(-800, 450);
    text("All types of monsters,and WIN by killing the boss", 0, 0);
    popMatrix();
  }

  if (stage == 9)
  {
    //monster explosion effect
    for (int i = 0; i < enemyNumber; i++)
    {
      if (enemyAlife[i] >= 2)
      {
        enemyAlife[i] = 1;
      }
    }

    //textes effect
    if (addKill < kill)
    {
      addKill ++;
    }
    if (addMoney < money)
    {
      addMoney += 25;
    }
    pushMatrix(); 
    translate(3025, 5000, 3000);
    textSize(400);
    rotateX(radians(270));
    rotateY(radians(180));

    text("You Have Clear All The Stages!!", 0, 0);
    translate(-500, 450);
    text("Kills:" + kill, 0, 0);
    translate(0, 450);
    text("Money: $" + addMoney, 0, 0);    
    translate(0, 450);
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
}

