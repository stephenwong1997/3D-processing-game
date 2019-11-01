boolean wPressed = false;
boolean sPressed = false;
boolean aPressed = false;
boolean dPressed = false;
void walking(int direction) {
  if (key == 'w' ||key == 's'|| key == 'a' ||key == 'd')
  {
    if (key == 'w') {
      wPressed = true;
    } else if (key == 's') {
      sPressed = true;
    }
    if (key == 'a') {
      aPressed = true;
    } else if (key == 'd') {
      dPressed = true;
    }
    if (wPressed && dPressed)
    {    
      direction += N/8;
      if (direction < 0)
      {
        direction += N;
      } else if (direction >=N)
      {
        direction -= N;
      }
      playerX += cameraAnglesX[direction] / circleSize*playerMovingSpeed;
      playerY += cameraAnglesY[direction] / circleSize*playerMovingSpeed;
    } else if (dPressed && sPressed)
    {    
      direction += N*3/8;
      if (direction < 0)
      {
        direction += N;
      } else if (direction >=N)
      {
        direction -= N;
      }
      playerX += cameraAnglesX[direction] / circleSize*playerMovingSpeed;
      playerY += cameraAnglesY[direction] / circleSize*playerMovingSpeed;
    } else if (sPressed && aPressed)
    {    
      direction += N*5/8;
      if (direction < 0)
      {
        direction += N;
      } else if (direction >=N)
      {
        direction -= N;
      }
      playerX += cameraAnglesX[direction] / circleSize*playerMovingSpeed;
      playerY += cameraAnglesY[direction] / circleSize*playerMovingSpeed;
    } else if (aPressed && wPressed)
    {    
      direction += N*7/8;
      if (direction < 0)
      {
        direction += N;
      } else if (direction >=N)
      {
        direction -= N;
      }
      playerX += cameraAnglesX[direction] / circleSize*playerMovingSpeed;
      playerY += cameraAnglesY[direction] / circleSize*playerMovingSpeed;
    } else if (wPressed)
    {    
      if (direction < 0)
      {
        direction += N;
      } else if (direction >=N)
      {
        direction -= N;
      }
      playerX += cameraAnglesX[direction] / circleSize*playerMovingSpeed;
      playerY += cameraAnglesY[direction] / circleSize*playerMovingSpeed;
    } else if (sPressed)
    {
      direction += N/2;
      if (direction < 0)
      {
        direction += N;
      } else if (direction >=N)
      {
        direction -= N;
      }
      playerX += cameraAnglesX[direction] / circleSize*playerMovingSpeed;
      playerY += cameraAnglesY[direction] / circleSize*playerMovingSpeed;
    } else if (aPressed)
    {    
      direction += N*3/4;
      if (direction < 0)
      {
        direction += N;
      } else if (direction >=N)
      {
        direction -= N;
      }
      playerX += cameraAnglesX[direction] / circleSize*playerMovingSpeed;
      playerY += cameraAnglesY[direction] / circleSize*playerMovingSpeed;
    } else if (dPressed)
    {    
      direction += N/4;
      if (direction < 0)
      {
        direction += N;
      } else if (direction >=N)
      {
        direction -= N;
      }
      playerX += cameraAnglesX[direction] / circleSize*playerMovingSpeed;
      playerY += cameraAnglesY[direction] / circleSize*playerMovingSpeed;
    }
  }
}
void keyReleased()
{
  if (key == 'w') {
    wPressed = false;
  } else if (key == 's') {
    sPressed = false;
  }
  if (key == 'a') {
    aPressed = false;
  } else if (key == 'd') {
    dPressed = false;
  }
//  if(key == 'q')
//  {
//    playerZ += 5*playerMovingSpeed;
//  }else if(key == 'e')
//  {
//    playerZ -=5*playerMovingSpeed;
//  }
}

