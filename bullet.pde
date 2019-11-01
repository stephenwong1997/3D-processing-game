int numberOfAmmo = 3;
float ammoSpeed = 25; //normal 10
float [] bulletX = new float [numberOfAmmo];
float [] bulletY = new float [numberOfAmmo];
float [] bulletZ = new float [numberOfAmmo];
int [] directionSave = new int [numberOfAmmo];
int [] directionZSave = new int [numberOfAmmo];
boolean [] ammoShot = new boolean [numberOfAmmo];
boolean reloadingR;

void drawBullet()
{
  for (int i = 0; i<ammoShot.length; i++)
  {
    if (ammoShot[i] == true)
    {
      pushMatrix();
      //      float TX =  playerX+cameraAnglesX[direction];
      //      float TY =  playerY+cameraAnglesY[direction];
      //      float TZ =  playerZ;
      translate(bulletX[i], bulletY[i], bulletZ[i]);
      noStroke();
      sphereDetail(10);
      if (barretton)
      {
        sphere(5);
      } else if (glock18con)
      {
        sphere(3);
      }
      fill(155);
      bulletX[i] += cameraAnglesX[directionSave[i]]/15*ammoSpeed;
      bulletY[i] += cameraAnglesY[directionSave[i]]/15*ammoSpeed;
      bulletZ[i] += cameraAnglesZ[directionZSave[i]]/15*ammoSpeed;

      popMatrix();
    }
  }
  //Reloading Procedure
  if (reloadingR)
  {
    if (ammoShot[0])
    {
      timeCount++;
      if (timeCount >= reloadingTime * 10) //about 1.5s
      {
        for (int i = 0; i < ammoShot.length; i++)
        {
          ammoShot[i] = false;
        }
        timeCount = 0;
        reloadingR = false;
      }
    }
  }
}


void mouseBullet()
{
  if (reloadingR == false)
  {
    for (int i = 0; i < ammoShot.length; i++)
    {
      if (ammoShot[i] == true)
      {
      } else if (ammoShot[i] == false)
      {
        SE_gunShot.rewind(); 
        SE_gunShot.play();
        ammoShot[i] = true;
        bulletX[i] = playerX+cameraAnglesX[direction];
        bulletY[i] = playerY+cameraAnglesY[direction];
        bulletZ[i] = playerZ+cameraAnglesZ[directionZ];
        directionSave[i] = direction;
        directionZSave[i] = directionZ;
        break;
      }
    }
    //    for (int i =0; i < ammoShot.length; i++)
    //    {
    //      println("Ammo Number ="+i + " ," +ammoShot[i]);
    //    }
    if (ammoShot[numberOfAmmo-1])
    { 
      if(SE_reloading.isPlaying())
      {}else{
      SE_reloading.rewind(); 
      SE_reloading.play();
      }
      reload();
      
      //      println("Start Reload"); //Reloading connect to the keyPressed > R key
    }
  }
}

float timeCount;
void reload()
{
  // Reload SE
  //  timeCount++;
  //  if (timeCount >= reloadingTime) //about 1.5s
  //  {
  //sdfsdf
  s=1;
  if (t<=0) {

    for (int i = 0; i < ammoShot.length; i++)
    {
      ammoShot[i] = false;
    }
    s=0;
    if(t <=0)
    {
    t=reloadingTime * 10;
    }
  }
  //    timeCount = 0;
  //  }
}

