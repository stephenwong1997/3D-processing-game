void drawWeapon()
{  
  if (glock18con == true)
  {
    pushMatrix();
    fill(155, 255);
    translate(playerX + stareX/circleSize*65, playerY + stareY/circleSize*65, stareZ+playerZ);
    rotateZ(radians(direction));
    rotateX(radians(270));
    rotateY(radians(200));
    shape(glock18c);
    popMatrix();
  } else if (barretton == true)
  {
    pushMatrix();
    fill(155, 255);
    translate(playerX + stareX, playerY +  stareY, playerZ + stareZ);
    rotateZ(radians(direction));
    rotateX(radians(270));
    rotateY(radians(180));
    shape(barrett);
    popMatrix();
  } else if (grenade == true && grenadeNumber > 0)
  {
    pushMatrix();
    fill(155, 255);
    translate(playerX + stareX, playerY +  stareY, playerZ + stareZ);
    rotateZ(radians(direction));
    rotateZ(radians(-90));
//    rotateX(radians(270));
//    rotateY(radians(180));
    shape(HEgrenade);
    popMatrix();
  }
}

