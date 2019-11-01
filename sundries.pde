void setupSundries()//load online once(in setup)
{    
  try// avoiding when setting mouse position frozen window
  {
    robby = new Robot();
  }
  catch (AWTException e)
  {
    println("Robot class not supported by your system!");
    exit();
  }

  if (!setWindow) {//set window must be used in draw
    frame.setLocation(displayX, displayY);
    setWindow = true;
  }
  
  for(int i = 0;i < N;i++)//getting angles for camera
  {
    cameraAnglesX[i] = circleSize*cos(TWO_PI/N*i);
    cameraAnglesY[i] = circleSize*sin(TWO_PI/N*i);
    vibration[i] = 5*sin(TWO_PI/N*i);
  }
  for (int i =0;i<N1;i++)
  {
    cameraAnglesZ[i] = circleSize*sin(TWO_PI/N*(270-i));
  }
  
  
  for(int i = 0;i<ammoShot.length;i++) // should load when game restarted
  {
    ammoShot[i] = false;
  }
 
  for(int i = 0 ; i < enemyNumber ; i++)
  {
    enemyX[i] = random(1250+200,3800-200);
    enemyY[i] = 10000;  // normal 12000   
    enemyZ[i] = 600;
    enemySpeed[i] = 12; //normal 12
    enemySpeedZ[i] = 0;
    enemyAlife[i] = 0;
    enemyTransparency[i] = 100; 
    enemyExplosion[i] = 200;
    enemyShadow[i] = 200;
  }
 
  //music Start//
  
   //create a Minim object 
  minim = new Minim(this);  
  
    //load the song into the abc
  SE_gunShot = minim.loadFile("gunShot.mp3");
  SE_explosion = minim.loadFile("explosion.mp3");
  SE_reloading = minim.loadFile("reloading.mp3");
  ME_victory = minim.loadFile("victory1.mp3");
  ME_victoryBoss = minim.loadFile("victoryBoss.mp3");
  BGM01 = minim.loadFile("BGM01.mp3");
  
  SE_gunShot.setGain(-10); // -80 13.9
  SE_explosion.setGain(-15); // -80 13.9
  ME_victory.setGain(-10);
  ME_victoryBoss.setGain(-8);
  BGM01.setGain(-15);
  
  
  
  
  
  //music End//
  
  
}



void sundries()//load in draw
{
  if (isShowing()) {//if the program is working(window is showing)
    java.awt.Point pt = getLocationOnScreen();//speacial function (pt.x/pt.y)  =  get the position of window on display_
  }
  if (constrainMouse == true) {
    robby.mouseMove(mouseXX, mouseYY); // setting mouse position
  }
    t=t-s;
}


void stop()
{
  //close the player
  SE_gunShot.close();
  SE_explosion.close();
  SE_reloading.close();
  ME_victory.close();
  ME_victoryBoss.close();
  BGM01.close();

  //stop Minim
  minim.stop(); 
}

