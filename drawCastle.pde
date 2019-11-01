void drawCastle()
{
  stroke(155);
  pushMatrix();
  translate(1000, 1000, 0);
  fill(castlecolour);
  box(500, 1500, 1500);//now means show the box at (0,0)
  //partA
  //1000, 1000, 0
  translate(1500, -500, 0);
  fill(castlecolour);
  box(2500, 500, 1500);//now means show the box at (0,0)
  //partB
  //2500,500,0
  translate(1500, 500, 0);
  fill(castlecolour);
  box(500, 1500, 1500);//now means show the box at (0,0)
  //partC
  //4000,1000,0

  popMatrix();
  //==================================================================
  pushMatrix();
  translate(775, 262.5, 762.5);
  for (float castleblk = 0; castleblk < 3350; castleblk +=100)
  {    
    translate(100, 0);
    fill(castlecolour);
    box(50, 25, 25);
  }
  popMatrix();
  //==================================================================
  pushMatrix();
  translate(775, 1737.5, 762.5);  
  for (float castleblk1 = 0; castleblk1 < 350; castleblk1 +=100)
  {
    translate(100, 0);
    fill(castlecolour);
    box(50, 25, 25);
  }
  popMatrix();
  //==================================================================
  for (float castleblk2 = 3775; castleblk2 < 4262.5; castleblk2 +=100)
  {
    pushMatrix();
    translate(castleblk2, 1737.5, 762.5);
    fill(castlecolour);
    box(50, 25, 25);
    popMatrix();
  }
  //==================================================================  
  for (float castleblk3 = 275; castleblk3 < 1775; castleblk3 +=100)
  {
    pushMatrix();
    translate(762.5, castleblk3, 762.5);
    fill(castlecolour);
    box(25, 50, 25);
    popMatrix();
  }
  //==================================================================
  for (float castleblk4 = 275; castleblk4 < 1775; castleblk4 +=100)
  {
    pushMatrix();
    translate(4237.5, castleblk4, 762.5);
    fill(castlecolour);
    box(25, 50, 25);
    popMatrix();
  }
  //==================================================================
  for (float castleblk5 = 1275; castleblk5 < 3775; castleblk5 +=100)
  {
    pushMatrix();
    translate(castleblk5, 737.5, 762.5);
    fill(castlecolour);
    box(50, 25, 25);
    popMatrix();
  }
  //==================================================================
  for (float castleblk6 = 825; castleblk6 < 1825; castleblk6 +=100)
  {
    pushMatrix();
    translate(1237.5, castleblk6, 762.5);
    fill(castlecolour);
    box(25, 50, 25);
    popMatrix();
  }
  //==================================================================
  for (float castleblk7 = 825; castleblk7 < 1825; castleblk7 +=100)
  {
    pushMatrix();
    translate(3762.5, castleblk7, 762.5);
    fill(castlecolour);
    box(25, 50, 25);
    popMatrix();
  }
  //==================================================================

}



