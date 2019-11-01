int startingPageSelection, page; //1start 2shop 3tutorial 4exit 5InsideSetting 6InsideTutorial
int startScene;
void startingPage()
{
  background(0);
  sundries(); //make sure the mouseX mouseY is in the center of display
  camera(-850, -145, 900, //position
  -850, -265, 780, //position looking at
  0, 0, -1);//unknown

  textSize(100);
  fill(255);
  if (page == 1 && startingPageSelection != 3)
  {
    image(start, -1500, -1970, 1500, 1500);
  }
  if (startingPageSelection == 3 && page ==1 )
  {
    //image of tutorial
    image(instruction,-1500,-1973,1500,1500);
  }

  pushMatrix();
  translate( -1500, -1800, 100);
  rotateX(radians(-90));
  text("Money: $" + money, 0, 0);
  popMatrix();


  if (startingPageSelection == 1 && page ==1)
  {  
    fill(255, 0, 0);
    text("Start", -1000, -1000);
    fill(255);
    text("Shop", -1000, -800); 
    text("Tutorial", -1000, -600);
    text("Exit(Ese)", -1000, -420);
  } else if (startingPageSelection == 2 && page ==1)
  {  
    fill(255);
    text("Start", -1000, -1000);
    fill(255, 0, 0);
    text("Shop", -1000, -800); 
    fill(255);
    text("Tutorial", -1000, -600);
    text("Exit(Ese)", -1000, -420);
  } else if (startingPageSelection == 3 && page ==1)
  {    
    fill(255);
    text("Start", -1000, -1000);
    text("Shop", -1000, -800); 
    fill(255, 0, 0);
    text("Tutorial", -1000, -600);
    fill(255);
    text("Exit(Ese)", -1000, -420);
  } else if (startingPageSelection == 4 && page ==1)
  {
    fill(255);
    text("Start", -1000, -1000);
    text("Shop", -1000, -800); 
    text("Tutorial", -1000, -600);
    fill(255, 0, 0);
    text("Exit(Ese)", -1000, -420);
  } else if ( startingPageSelection == 5 && page ==2)
  {
    fill(255, 0, 0);   
    text("$150 Castle Life =" + castleLifeMax, -1400, -1200);
    fill(255);
    text("$250 Max Ammo Number =" +numberOfAmmo, -1600, -1000);
    int showLongGunReloadingTime = longGunReloadingTime*1000/60;
    text("$200 Sniper ReloadTime =" + showLongGunReloadingTime + "ms", -1600, -800); 
    int showShortGunReloadingTime = shortGunReloadingTime*1000/60;
    text("$150 HandGun ReloadTime =" + showShortGunReloadingTime + "ms", -1600, -600);
    text("Back", -1400, -420);
  } else if ( startingPageSelection == 6 && page ==2)
  {
    fill(255);   
    text("$150 Castle Life =" + castleLifeMax, -1400, -1200);
    fill(255, 0, 0);  
    text("$250 Max Ammo Number =" +numberOfAmmo, -1600, -1000);
    fill(255);  
    int showLongGunReloadingTime = longGunReloadingTime*1000/60;
    text("$200 Sniper ReloadTime =" + showLongGunReloadingTime + "ms", -1600, -800); 
    int showShortGunReloadingTime = shortGunReloadingTime*1000/60;
    text("$150 HandGun ReloadTime =" + showShortGunReloadingTime + "ms", -1600, -600);
    text("Back", -1400, -420);
  } else if ( startingPageSelection == 7 && page ==2)
  {
    fill(255);   
    text("$150 Castle Life =" + castleLifeMax, -1400, -1200);
    text("$250 Max Ammo Number =" +numberOfAmmo, -1600, -1000);
    fill(255, 0, 0);  
    int showLongGunReloadingTime = longGunReloadingTime*1000/60;
    text("$200 Sniper ReloadTime =" + showLongGunReloadingTime + "ms", -1600, -800); 
    fill(255);   
    int showShortGunReloadingTime = shortGunReloadingTime*1000/60;
    text("$150 HandGun ReloadTime =" + showShortGunReloadingTime + "ms", -1600, -600);
    text("Back", -1400, -420);
  } else if ( startingPageSelection == 8 && page ==2)
  {
    fill(255);   
    text("$150 Castle Life =" + castleLifeMax, -1400, -1200);
    text("$250 Max Ammo Number =" +numberOfAmmo, -1600, -1000);
    int showLongGunReloadingTime = longGunReloadingTime*1000/60;
    text("$200 Sniper ReloadTime =" + showLongGunReloadingTime + "ms", -1600, -800); 
    fill(255, 0, 0);   
    int showShortGunReloadingTime = shortGunReloadingTime*1000/60;
    text("$150 HandGun ReloadTime =" + showShortGunReloadingTime + "ms", -1600, -600);
    fill(255);
    text("Back", -1400, -420);
  } else if ( startingPageSelection == 9 && page ==2)
  {
    fill(255);   
    text("$150 Castle Life =" + castleLifeMax, -1400, -1200);
    text("$250 Max Ammo Number =" +numberOfAmmo, -1600, -1000);
    int showLongGunReloadingTime = longGunReloadingTime*1000/60;
    text("$200 Sniper ReloadTime =" + showLongGunReloadingTime + "ms", -1600, -800);  
    int showShortGunReloadingTime = shortGunReloadingTime*1000/60;
    text("$150 HandGun ReloadTime =" + showShortGunReloadingTime + "ms", -1600, -600);
    fill(255, 0, 0);  
    text("Back", -1400, -420);
  }








  //  pushMatrix();
  //  translate(-1000,-1000,-1000);
  //  fill(255,0,0);
  //  stroke(255);
  //  sphere(1000);
  //  popMatrix();  




  //  baseLine();
  //  cameraControl();
  //  if (keyPressed) {
  //    walking(direction);
  //  }
}


void startingPageKeyPressing()
{
  if (keyCode == DOWN)
  {
    if (startingPageSelection < 4 && page ==1 )
    {
      startingPageSelection ++;
    }
    if (startingPageSelection < 9 && page ==2 )
    {
      startingPageSelection ++;
    }
  }
  if (keyCode == UP)
  {
    if (startingPageSelection > 1 && page ==1)
    {
      startingPageSelection --;
    }
    if (startingPageSelection > 5 && page ==2)
    {
      startingPageSelection --;
    }
  }
  if (keyCode == ENTER)
  {
    if (startingPageSelection == 1)
    {
      stage = 2;
      playerX = 2040;
      playerY = 510;
      playerZ = 900;
      direction = 90;
      directionZ = 77;
      castleLife = castleLifeMax;
      reloadingTime = shortGunReloadingTime;
      BGM01.pause();
      BGM01.loop();
    } else if (startingPageSelection == 2)
    {
      page = 2;
      startingPageSelection = 5;
    } else if (startingPageSelection == 3)
    {
//      page = 3;
    } else if (startingPageSelection == 4)
    {
      exit();
    } else if (startingPageSelection == 5)
    {
      if (money>=150)
      {
        castleLifeMax++;
        money -= 150;
      }
    } else if (startingPageSelection == 6)
    {
      if (money>=250)
      {
        numberOfAmmo++;
        bulletX = expand(bulletX, numberOfAmmo);
        bulletY = expand(bulletY, numberOfAmmo);
        bulletZ = expand(bulletZ, numberOfAmmo);
        directionSave = expand(directionSave, numberOfAmmo);
        directionZSave = expand(directionZSave, numberOfAmmo);
        ammoShot = expand(ammoShot, numberOfAmmo);
        money -= 250;

//        float [] bulletX = new float [numberOfAmmo];
//        float [] bulletY = new float [numberOfAmmo];
//        float [] bulletZ = new float [numberOfAmmo];
//        int [] directionSave = new int [numberOfAmmo];
//        int [] directionZSave = new int [numberOfAmmo];
//        boolean [] ammoShot = new boolean [numberOfAmmo];
      }
    } else if (startingPageSelection == 7)
    {
      if (money>=200 && longGunReloadingTime >1)
      {
        longGunReloadingTime--;
        money -= 200;
      }
    } else if (startingPageSelection == 8)
    {
      if (money>=150 && shortGunReloadingTime >1)
      {
        shortGunReloadingTime--;
        money -= 150;
      }
    } else if (startingPageSelection == 9)
    {
      page = 1;
      startingPageSelection =1;
    }
  }
}

