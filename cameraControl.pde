void cameraControl()
{

  mouseSpeedX = (mouseX - mouseDebugX)/mouseSensibility;//senses the mouse movement by the middle point of the computer
  mouseSpeedZ = (mouseY - mouseDebugY);


  directionZ -= mouseSpeedZ/mouseSensibility;//move up and down
  direction += mouseSpeedX;//move left and right
  directionZ = constrain(directionZ, 0, 180);

  //  println(directionZ);

  if (vibrating)
  {
    vibratingTime ++;
    vibrationDirection += 31;
    if (vibratingTime >40)
    {
      vibratingTime = 0;
      vibrating = false;
    }
  }

  if (vibrationDirection < 0)
  {
    vibrationDirection += N;
  } else if (vibrationDirection >=N)
  {
    vibrationDirection -= N;
  }

  if (direction < 0)
  {
    direction += N;
  } else if (direction >=N)
  {
    direction -= N;
  } else 
  {
    stareX =  cameraAnglesX[direction];
    stareY =  cameraAnglesY[direction];
    stareZ =  cameraAnglesZ[directionZ];

    //those whole is for checking the camera staring point
    //    camera(playerX, playerY, playerZ, //position
    //    playerX + stareX, playerY +  stareY, stareZ, //position looking at
    //    0, 0, -1);//unknown
    //
    //    pushMatrix();
    //    translate(playerX + stareX/circleSize, playerY +  stareY/circleSize, stareZ);
    //    noStroke();
    //    fill(255,0,0, 50);
    //    sphere(5);
    //    popMatrix();
  }
  camera(playerX, playerY, playerZ, //position
  playerX + stareX, playerY +  stareY, playerZ+ stareZ + vibration[vibrationDirection], //position looking at
  0, 0, -1);//unknown

  pushMatrix();
  translate(playerX + stareX, playerY +  stareY, playerZ+stareZ);
  stroke(0, 20);
  fill(255);
  sphere(0.5);
  popMatrix();
}

