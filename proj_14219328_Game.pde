float mouseDebugX =957, mouseDebugY =515; //later
float mouseSensibility = 15;//should be adjusted by player
//please run the program and type in the value of   MouseX,MouseY  ( see it in println)

float t, s;
int x, y, z, mouseXX, mouseYY, displayX, displayY, direction, directionZ, circleSize, stage, grenadeNumber, kill, killNeed, ammoNumberShow;
int longGunReloadingTime = 60;
int shortGunReloadingTime = 18;
int money = 750;// normal 500
int castleLife , castleLifeMax = 5;
float playerX, playerY, playerZ, stareX, stareY, stareZ, mouseSpeedX, mouseSpeedZ, reloadingTime, vibratingTime; // , canglex, cangley <---don't know what it is
float playerMovingSpeed = 10.5;
boolean setWindow, constrainMouse, bossLoadOnce;

int enemyNumber = 11; //can not lower than the amount of enemyModels  // 11 is the boss
float [] enemyX = new float[enemyNumber];
float [] enemyY = new float[enemyNumber];
float [] enemyZ = new float[enemyNumber];
float [] enemySpeed = new float[enemyNumber];
float [] enemySpeedZ = new float[enemyNumber];
float [] enemyShadow = new float[enemyNumber];
float enemyDropSpeed = 0.5;
int [] enemyAlife = new int[enemyNumber]; // ver2  0= not appear yet , 1 = die , >1 appear + life
float [] enemyTransparency = new float[enemyNumber];
float [] enemyExplosion = new float[enemyNumber];
int deadLine = 1700;

int N  = 360;//number of integer for ratating camera
int N1 = 181;//for cameraZ angles
int vibrationDirection;
boolean vibrating;
float []cameraAnglesX = new float[N];
float []cameraAnglesY = new float[N];
float []vibration = new float[N];
float []cameraAnglesZ = new float[N1];

PImage start,instruction;

import java.awt.AWTException;
import java.awt.Robot;
Robot robby;                 //seting mouse position( middle of the window)


// **************Music Start**************//
import ddf.minim.*;  //import the Minim library

//create Minim variable
Minim minim;

//create AudioPlayer variable
AudioPlayer SE_gunShot;
AudioPlayer SE_explosion;
AudioPlayer SE_reloading;
AudioPlayer ME_victory;
AudioPlayer ME_victoryBoss;
AudioPlayer BGM01;

// **************Music End****************//


void setup()
{

  size(displayWidth, displayHeight, P3D);

  x = 0;
  y = 0;
  z = 0;
  mouseXX = width/2;//for setting mouse position
  mouseYY = height/2;
  displayX = 0;//setting the window's starting position
  displayY = 0;
  direction = 190;
  directionZ = 90;
  circleSize = 120;
  stage=1; //0 gameOver , 1 starting Page , 2 playing level1, 3 waiting for level2 , 4 level2 , 5 endling 
  grenadeNumber = 2; 

  playerX = 2040;
  playerY = 510;
  playerZ = 900;
  stareX = 0;
  stareY = 0;
  stareZ = 5;
  mouseSpeedX = 0;
  mouseSpeedZ = 0;
  reloadingTime = 4;
  reloadingTime = shortGunReloadingTime;
  bossMaxBlood = 15000;
  page =1;
  castleLife = castleLifeMax;

  t=60;
  s=0;

  bossLoadOnce = true;

  start = loadImage("start.jpg");
  instruction = loadImage("instruction.jpg");
  startingPageSelection = 1;

  frameRate(100);
  smooth();
  noCursor();
  stroke(255);
  noFill();


  setWindow = false;
  constrainMouse = true;

  setupSundries();
  gunModel();
  grenadeModel();

  enemyModel0(1);//size  1=normal 
  enemyModel1(1);
  enemyModel2(1);
  enemyModel3(1);
  enemyModel4(1);
  enemyModel5(1);
  enemyModel6(1);
  enemyModel7(1);
  enemyModel8(1);//new
  enemyModel9(1);
  enemyModel10(7);
  //=========================TESTING=================================
  //  enemyAlife[1] = 2;
  //  enemyX[1]=width;
  //  enemyY[1]= 10000;
  ////  enemyZ[1]=200;
  //  enemyAlife[2] = 2;
  //  enemyX[2]=width+800;
  //  enemyY[2]=3000;
  //  enemyZ[2]=200;
  playerX = -1000;
  playerY = -1000;
  playerZ = 900;

  //  for (int i = 0; i < 1; i++) //maxium for 4/14 is 6
  //  {
  //    enemyAlife[i] = 6;
  //  }
}




void draw()
{   
  if (stage == 0)
  {
    background(0);
    sundries(); // 
    cameraControl(); // sundries should be group with cameraControl() to make it work
    baseLine();
    drawWeapon();
    drawEnemy();
    if (keyPressed) {
      walking(direction);
    }
    drawBullet();
    animation();
    startLevel();
    dyingAnimation();
  }
  if (stage == 1)
  {
    startingPage();
  } else if (stage == 2 || stage == 3)
  {
    background(0);
    sundries(); // 
    cameraControl(); // sundries should be group with cameraControl() to make it work
    baseLine();
    drawCastle();
    drawWeapon();
    drawEnemy();
    if (keyPressed) {
      walking(direction);
    }
    drawBullet();
    onTheCastle();
    dectionShooting(); 
    animation();
    startLevel();
    castleLifeDetection();
  } else if (stage == 4 || stage == 5)
  {
    background(0);
    sundries(); // 
    cameraControl(); // sundries should be group with cameraControl() to make it work
    baseLine();
    drawCastle();
    drawWeapon();
    drawEnemy();
    if (keyPressed) {
      walking(direction);
    }
    drawBullet();
    onTheCastle();
    dectionShooting(); 
    animation();
    startLevel();
    castleLifeDetection();
  } else if (stage == 6 || stage == 7)
  {
    background(0);
    sundries(); // 
    cameraControl(); // sundries should be group with cameraControl() to make it work
    baseLine();
    drawCastle();
    drawWeapon();
    drawEnemy();
    if (keyPressed) {
      walking(direction);
    }
    drawBullet();
    onTheCastle();
    dectionShooting(); 
    animation();
    startLevel();
    castleLifeDetection();
  } else if (stage == 8 || stage == 9)
  {
    background(0);
    sundries(); // 
    cameraControl(); // sundries should be group with cameraControl() to make it work
    baseLine();
    drawCastle();
    drawWeapon();
    drawEnemy();
    if (keyPressed) {
      walking(direction);
    }
    drawBullet();
    onTheCastle();
    dectionShooting(); 
    animation();
    startLevel();
    castleLifeDetection();
  }
}





void keyPressed()
{
  if (key == '1')
  {
    glock18con = false;
    barretton = true;
    grenade = false;
    ammoSpeed = 30;
    reloadingTime = longGunReloadingTime;
  } else if (key == '2')
  {
    glock18con = true;
    barretton = false;
    grenade = false;
    ammoSpeed = 15;
    reloadingTime = shortGunReloadingTime;
  }
  //  } else if (key == '3')
  //  {
  //    glock18con = false;
  //    barretton = false;
  //    grenade = true;
  //  }

  if (key == 'r' || key == 'R')
  {
    if (ammoShot[0])
    {
      SE_reloading.rewind(); 
      SE_reloading.play();
      reloadingR = true;
    }
  }
  if (stage == 1)
  {
    startingPageKeyPressing();
  }

  if (key == 'p' || key == 'P'   )
  {
    if (stage == 3 || stage == 5 || stage == 7)//add ||stage == 4
    {
      BGM01.rewind();
      BGM01.play();
      stage ++;
      kill = 0;
      addKill = 0;
    }
  }
  //  if (key == ' ')
  //  {
  //    println("playerX = " + playerX + " playerY = " +playerY + " playerZ = " + playerZ);
  //    float pk1 = playerX + stareX;
  //    float pk2 = playerY + stareY;
  //    float pk3 = playerZ + stareZ;
  //    println("stareX = " + pk1 + " stareY = " + pk2 + " stareZ = " + pk3);
  //  }
}




void mousePressed()
{
  if (mouseButton == LEFT)
  {
    if (grenade == false)
    {
      mouseBullet();
    }
  }
  //    if (mouseButton == RIGHT)
  //  {
  //    vibrating = true;
  //  }
}

//
// Note
//7.bug of starting page(setting button,inside setting ,press UP DOWN when go back first scene
//8.shop (upgrade guns reloading time,ammo number ,grenade)
