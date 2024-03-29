int monsterc00 = int(random(200)); //normal = 255
PShape [] monster = new PShape [enemyNumber];
PShape m001, m002, m003, m004, m005, m006, m007, m008, m009;
void enemyModel0(float size)
{
  noStroke();
  monster[0] = createShape(GROUP);
  m001 = createShape(SPHERE, size*200, size*200, size*200);
  m001.translate(0, 0, 0);
  m001.setFill(color(0,0,monsterc00));
  m002 = createShape(BOX, size*150, size*150, size*50);
  m002.rotateZ(radians(-20));
  m002.translate(size*120, size*-80, 0);
  m002.setFill(color(0,0,monsterc00));
  m003 = createShape(BOX, size*150, size*150, size*50);
  m003.rotateZ(radians(20));
  m003.translate(size*-120, size*-80, 0);
  m003.setFill(color(0,0,monsterc00));
  m004 = createShape(BOX, size*110, size*110,size*55);
  m004.rotateZ(radians(-20));
  m004.translate(size*120, size*-80, 0);
  m004.setFill(color(255));
  m005 = createShape(BOX, size*110,size* 110,size* 55);
  m005.rotateZ(radians(20));
  m005.translate(size*-120,size* -80, 0);
  m005.setFill(color(255));
  m006 = createShape(BOX, size*30, size*100, size*20);
  m006.translate(size*70, 0, size*200);
  m006.setFill(color(255));
  m007 = createShape(BOX, size*30, size*100, size*20);
  m007.translate(size*-70, 0, size*200);
  m007.setFill(color(255));
  m008 = createShape(BOX, size*15,size* 60,size* 20);
  m008.translate(size*70, 0, size*210);
  m008.setFill(color(0));
  m009 = createShape(BOX, size*15, size*60, size*20);
  m009.translate(size*-70, 0, size*210);
  m009.setFill(color(0));
  monster[0].addChild(m001);
  monster[0].addChild(m002);
  monster[0].addChild(m003);
  monster[0].addChild(m004);
  monster[0].addChild(m005);
  monster[0].addChild(m006);
  monster[0].addChild(m007);
  monster[0].addChild(m008);
  monster[0].addChild(m009);
}

int monsterc01 = int(random(200));
PShape m101, m102, m103, m104, m105, m106, m107, m108, m109;
void enemyModel1(float size)
{
  noStroke();
  monster[1] = createShape(GROUP);
  m101 = createShape(SPHERE, size*200, size*200, size*200);
  m101.translate(0, 0, 0);
  m101.setFill(color(monsterc01,0,0));
  m102 = createShape(BOX, size*150, size*150, size*50);
  m102.rotateZ(radians(-20));
  m102.translate(size*120, size*-80, 0);
  m102.setFill(color(monsterc01,0,0));
  m103 = createShape(BOX, size*150, size*150, size*50);
  m103.rotateZ(radians(20));
  m103.translate(size*-120, size*-80, 0);
  m103.setFill(color(monsterc01,0,0));
  m104 = createShape(BOX, size*110, size*110,size*55);
  m104.rotateZ(radians(-20));
  m104.translate(size*120, size*-80, 0);
  m104.setFill(color(255));
  m105 = createShape(BOX, size*110,size* 110,size* 55);
  m105.rotateZ(radians(20));
  m105.translate(size*-120,size* -80, 0);
  m105.setFill(color(255));
  m106 = createShape(BOX, size*30, size*100, size*20);
  m106.translate(size*70, 0, size*200);
  m106.setFill(color(255));
  m107 = createShape(BOX, size*30, size*100, size*20);
  m107.translate(size*-70, 0, size*200);
  m107.setFill(color(255));
  m108 = createShape(BOX, size*15,size* 60,size* 20);
  m108.translate(size*70, 0, size*210);
  m108.setFill(color(0));
  m109 = createShape(BOX, size*15, size*60, size*20);
  m109.translate(size*-70, 0, size*210);
  m109.setFill(color(0));
  monster[1].addChild(m101);
  monster[1].addChild(m102);
  monster[1].addChild(m103);
  monster[1].addChild(m104);
  monster[1].addChild(m105);
  monster[1].addChild(m106);
  monster[1].addChild(m107);
  monster[1].addChild(m108);
  monster[1].addChild(m109);
}
int monsterc02 = int(random(200));
PShape m201, m202, m203, m204, m205, m206, m207, m208, m209;
void enemyModel2(float size)
{
  noStroke();
  monster[2] = createShape(GROUP);
  m201 = createShape(SPHERE, size*200, size*200, size*200);
  m201.translate(0, 0, 0);
  m201.setFill(color(0,monsterc02,0));
  m202 = createShape(BOX, size*150, size*150, size*50);
  m202.rotateZ(radians(-20));
  m202.translate(size*120, size*-80, 0);
  m202.setFill(color(0,monsterc02,0));
  m203 = createShape(BOX, size*150, size*150, size*50);
  m203.rotateZ(radians(20));
  m203.translate(size*-120, size*-80, 0);
  m203.setFill(color(0,monsterc02,0));
  m204 = createShape(BOX, size*110, size*110,size*55);
  m204.rotateZ(radians(-20));
  m204.translate(size*120, size*-80, 0);
  m204.setFill(color(255));
  m205 = createShape(BOX, size*110,size* 110,size* 55);
  m205.rotateZ(radians(20));
  m205.translate(size*-120,size* -80, 0);
  m205.setFill(color(255));
  m206 = createShape(BOX, size*30, size*100, size*20);
  m206.translate(size*70, 0, size*200);
  m206.setFill(color(255));
  m207 = createShape(BOX, size*30, size*100, size*20);
  m207.translate(size*-70, 0, size*200);
  m207.setFill(color(255));
  m208 = createShape(BOX, size*15,size* 60,size* 20);
  m208.translate(size*70, 0, size*210);
  m208.setFill(color(0));
  m209 = createShape(BOX, size*15, size*60, size*20);
  m209.translate(size*-70, 0, size*210);
  m209.setFill(color(0));
  monster[2].addChild(m201);
  monster[2].addChild(m202);
  monster[2].addChild(m203);
  monster[2].addChild(m204);
  monster[2].addChild(m205);
  monster[2].addChild(m206);
  monster[2].addChild(m207);
  monster[2].addChild(m208);
  monster[2].addChild(m209);
}

int monsterc03 = int(random(200));
PShape  m301, m302, m303, m304, m305, m306, m307, m308, m309;
void enemyModel3(float size)
{
  noStroke();
  monster[3] = createShape(GROUP);
  m301 = createShape(SPHERE, size*200, size*200, size*200);
  m301.translate(0, 0, 0);
  m301.setFill(color(0,0,monsterc03));
  m302 = createShape(BOX, size*150, size*150, size*50);
  m302.rotateZ(radians(-20));
  m302.translate(size*120, size*-80, 0);
  m302.setFill(color(0,0,monsterc03));
  m303 = createShape(BOX, size*150, size*150, size*50);
  m303.rotateZ(radians(20));
  m303.translate(size*-120, size*-80, 0);
  m303.setFill(color(0,0,monsterc03));
  m304 = createShape(BOX, size*110, size*110,size*55);
  m304.rotateZ(radians(-20));
  m304.translate(size*120, size*-80, 0);
  m304.setFill(color(255));
  m305 = createShape(BOX, size*110,size* 110,size* 55);
  m305.rotateZ(radians(20));
  m305.translate(size*-120,size* -80, 0);
  m305.setFill(color(255));
  m306 = createShape(BOX, size*30, size*100, size*20);
  m306.translate(size*70, 0, size*200);
  m306.setFill(color(255));
  m307 = createShape(BOX, size*30, size*100, size*20);
  m307.translate(size*-70, 0, size*200);
  m307.setFill(color(255));
  m308 = createShape(BOX, size*15,size* 60,size* 20);
  m308.translate(size*70, 0, size*210);
  m308.setFill(color(0));
  m309 = createShape(BOX, size*15, size*60, size*20);
  m309.translate(size*-70, 0, size*210);
  m309.setFill(color(0));
  monster[3].addChild(m301);
  monster[3].addChild(m302);
  monster[3].addChild(m303);
  monster[3].addChild(m304);
  monster[3].addChild(m305);
  monster[3].addChild(m306);
  monster[3].addChild(m307);
  monster[3].addChild(m308);
  monster[3].addChild(m309);
}
int monsterc04 = int(random(200));
PShape m401, m402, m403, m404, m405, m406, m407, m408, m409;
void enemyModel4(float size)
{
  noStroke();
  monster[4] = createShape(GROUP);
  m401 = createShape(SPHERE, size*200, size*200, size*200);
  m401.translate(0, 0, 0);
  m401.setFill(color(monsterc04,0,0));
  m402 = createShape(BOX, size*150, size*150, size*50);
  m402.rotateZ(radians(-20));
  m402.translate(size*120, size*-80, 0);
  m402.setFill(color(monsterc04,0,0));
  m403 = createShape(BOX, size*150, size*150, size*50);
  m403.rotateZ(radians(20));
  m403.translate(size*-120, size*-80, 0);
  m403.setFill(color(monsterc04,0,0));
  m404 = createShape(BOX, size*110, size*110,size*55);
  m404.rotateZ(radians(-20));
  m404.translate(size*120, size*-80, 0);
  m404.setFill(color(255));
  m405 = createShape(BOX, size*110,size* 110,size* 55);
  m405.rotateZ(radians(20));
  m405.translate(size*-120,size* -80, 0);
  m405.setFill(color(255));
  m406 = createShape(BOX, size*30, size*100, size*20);
  m406.translate(size*70, 0, size*200);
  m406.setFill(color(255));
  m407 = createShape(BOX, size*30, size*100, size*20);
  m407.translate(size*-70, 0, size*200);
  m407.setFill(color(255));
  m408 = createShape(BOX, size*15,size* 60,size* 20);
  m408.translate(size*70, 0, size*210);
  m408.setFill(color(0));
  m409 = createShape(BOX, size*15, size*60, size*20);
  m409.translate(size*-70, 0, size*210);
  m409.setFill(color(0));
  monster[4].addChild(m401);
  monster[4].addChild(m402);
  monster[4].addChild(m403);
  monster[4].addChild(m404);
  monster[4].addChild(m405);
  monster[4].addChild(m406);
  monster[4].addChild(m407);
  monster[4].addChild(m408);
  monster[4].addChild(m409);
}
int monsterc05 = int(random(200));
PShape m501, m502, m503, m504, m505, m506, m507, m508, m509;
void enemyModel5(float size)
{
  noStroke();
  monster[5] = createShape(GROUP);
  m501 = createShape(SPHERE, size*200, size*200, size*200);
  m501.translate(0, 0, 0);
  m501.setFill(color(0,monsterc05,0));
  m502 = createShape(BOX, size*150, size*150, size*50);
  m502.rotateZ(radians(-20));
  m502.translate(size*120, size*-80, 0);
  m502.setFill(color(0,monsterc05,0));
  m503 = createShape(BOX, size*150, size*150, size*50);
  m503.rotateZ(radians(20));
  m503.translate(size*-120, size*-80, 0);
  m503.setFill(color(0,monsterc05,0));
  m504 = createShape(BOX, size*110, size*110,size*55);
  m504.rotateZ(radians(-20));
  m504.translate(size*120, size*-80, 0);
  m504.setFill(color(255));
  m505 = createShape(BOX, size*110,size* 110,size* 55);
  m505.rotateZ(radians(20));
  m505.translate(size*-120,size* -80, 0);
  m505.setFill(color(255));
  m506 = createShape(BOX, size*30, size*100, size*20);
  m506.translate(size*70, 0, size*200);
  m506.setFill(color(255));
  m507 = createShape(BOX, size*30, size*100, size*20);
  m507.translate(size*-70, 0, size*200);
  m507.setFill(color(255));
  m508 = createShape(BOX, size*15,size* 60,size* 20);
  m508.translate(size*70, 0, size*210);
  m508.setFill(color(0));
  m509 = createShape(BOX, size*15, size*60, size*20);
  m509.translate(size*-70, 0, size*210);
  m509.setFill(color(0));
  monster[5].addChild(m501);
  monster[5].addChild(m502);
  monster[5].addChild(m503);
  monster[5].addChild(m504);
  monster[5].addChild(m505);
  monster[5].addChild(m506);
  monster[5].addChild(m507);
  monster[5].addChild(m508);
  monster[5].addChild(m509);
}
int monsterc06 = int(random(200));
PShape m601, m602, m603, m604, m605, m606, m607, m608, m609;
void enemyModel6(float size)
{
  noStroke();
  monster[6] = createShape(GROUP);
  m601 = createShape(SPHERE, size*200, size*200, size*200);
  m601.translate(0, 0, 0);
  m601.setFill(color(monsterc06,monsterc06,0));
  m602 = createShape(BOX, size*150, size*150, size*50);
  m602.rotateZ(radians(-20));
  m602.translate(size*120, size*-80, 0);
  m602.setFill(color(monsterc06,monsterc06,0));
  m603 = createShape(BOX, size*150, size*150, size*50);
  m603.rotateZ(radians(20));
  m603.translate(size*-120, size*-80, 0);
  m603.setFill(color(monsterc06,monsterc06,0));
  m604 = createShape(BOX, size*110, size*110,size*55);
  m604.rotateZ(radians(-20));
  m604.translate(size*120, size*-80, 0);
  m604.setFill(color(255));
  m605 = createShape(BOX, size*110,size* 110,size* 55);
  m605.rotateZ(radians(20));
  m605.translate(size*-120,size* -80, 0);
  m605.setFill(color(255));
  m606 = createShape(BOX, size*30, size*100, size*20);
  m606.translate(size*70, 0, size*200);
  m606.setFill(color(255));
  m607 = createShape(BOX, size*30, size*100, size*20);
  m607.translate(size*-70, 0, size*200);
  m607.setFill(color(255));
  m608 = createShape(BOX, size*15,size* 60,size* 20);
  m608.translate(size*70, 0, size*210);
  m608.setFill(color(0));
  m609 = createShape(BOX, size*15, size*60, size*20);
  m609.translate(size*-70, 0, size*210);
  m609.setFill(color(0));
  monster[6].addChild(m601);
  monster[6].addChild(m602);
  monster[6].addChild(m603);
  monster[6].addChild(m604);
  monster[6].addChild(m605);
  monster[6].addChild(m606);
  monster[6].addChild(m607);
  monster[6].addChild(m608);
  monster[6].addChild(m609);
}
int monsterc07 = int(random(200));
PShape m701, m702, m703, m704, m705, m706, m707, m708, m709;
void enemyModel7(float size)
{
  noStroke();
  monster[7] = createShape(GROUP);
  m701 = createShape(SPHERE, size*200, size*200, size*200);
  m701.translate(0, 0, 0);
  m701.setFill(color(0,monsterc07,monsterc07));
  m702 = createShape(BOX, size*150, size*150, size*50);
  m702.rotateZ(radians(-20));
  m702.translate(size*120, size*-80, 0);
  m702.setFill(color(0,monsterc07,monsterc07));
  m703 = createShape(BOX, size*150, size*150, size*50);
  m703.rotateZ(radians(20));
  m703.translate(size*-120, size*-80, 0);
  m703.setFill(color(0,monsterc07,monsterc07));
  m704 = createShape(BOX, size*110, size*110,size*55);
  m704.rotateZ(radians(-20));
  m704.translate(size*120, size*-80, 0);
  m704.setFill(color(255));
  m705 = createShape(BOX, size*110,size* 110,size* 55);
  m705.rotateZ(radians(20));
  m705.translate(size*-120,size* -80, 0);
  m705.setFill(color(255));
  m706 = createShape(BOX, size*30, size*100, size*20);
  m706.translate(size*70, 0, size*200);
  m706.setFill(color(255));
  m707 = createShape(BOX, size*30, size*100, size*20);
  m707.translate(size*-70, 0, size*200);
  m707.setFill(color(255));
  m708 = createShape(BOX, size*15,size* 60,size* 20);
  m708.translate(size*70, 0, size*210);
  m708.setFill(color(0));
  m709 = createShape(BOX, size*15, size*60, size*20);
  m709.translate(size*-70, 0, size*210);
  m709.setFill(color(0));
  monster[7].addChild(m701);
  monster[7].addChild(m702);
  monster[7].addChild(m703);
  monster[7].addChild(m704);
  monster[7].addChild(m705);
  monster[7].addChild(m706);
  monster[7].addChild(m707);
  monster[7].addChild(m708);
  monster[7].addChild(m709);
}
int monsterc08 = int(random(200));
PShape m801, m802, m803, m804, m805, m806, m807, m808, m809;
void enemyModel8(float size)
{
  noStroke();
  monster[8] = createShape(GROUP);
  m801 = createShape(SPHERE, size*200, size*200, size*200);
  m801.translate(0, 0, 0);
  m801.setFill(color(monsterc08,0,monsterc08));
  m802 = createShape(BOX, size*150, size*150, size*50);
  m802.rotateZ(radians(-20));
  m802.translate(size*120, size*-80, 0);
  m802.setFill(color(monsterc08,0,monsterc08));
  m803 = createShape(BOX, size*150, size*150, size*50);
  m803.rotateZ(radians(20));
  m803.translate(size*-120, size*-80, 0);
  m803.setFill(color(monsterc08,0,monsterc08));
  m804 = createShape(BOX, size*110, size*110,size*55);
  m804.rotateZ(radians(-20));
  m804.translate(size*120, size*-80, 0);
  m804.setFill(color(255));
  m805 = createShape(BOX, size*110,size* 110,size* 55);
  m805.rotateZ(radians(20));
  m805.translate(size*-120,size* -80, 0);
  m805.setFill(color(255));
  m806 = createShape(BOX, size*30, size*100, size*20);
  m806.translate(size*70, 0, size*200);
  m806.setFill(color(255));
  m807 = createShape(BOX, size*30, size*100, size*20);
  m807.translate(size*-70, 0, size*200);
  m807.setFill(color(255));
  m808 = createShape(BOX, size*15,size* 60,size* 20);
  m808.translate(size*70, 0, size*210);
  m808.setFill(color(0));
  m809 = createShape(BOX, size*15, size*60, size*20);
  m809.translate(size*-70, 0, size*210);
  m809.setFill(color(0));
  monster[8].addChild(m801);
  monster[8].addChild(m802);
  monster[8].addChild(m803);
  monster[8].addChild(m804);
  monster[8].addChild(m805);
  monster[8].addChild(m806);
  monster[8].addChild(m807);
  monster[8].addChild(m808);
  monster[8].addChild(m809);
}
int monsterc09 = int(random(200));
PShape m901, m902, m903, m904, m905, m906, m907, m908, m909;
void enemyModel9(float size)
{
  noStroke();
  monster[9] = createShape(GROUP);
  m901 = createShape(SPHERE, size*200, size*200, size*200);
  m901.translate(0, 0, 0);
  m901.setFill(color(monsterc09,0,monsterc09));
  m902 = createShape(BOX, size*150, size*150, size*50);
  m902.rotateZ(radians(-20));
  m902.translate(size*120, size*-80, 0);
  m902.setFill(color(monsterc09,0,monsterc09));
  m903 = createShape(BOX, size*150, size*150, size*50);
  m903.rotateZ(radians(20));
  m903.translate(size*-120, size*-80, 0);
  m903.setFill(color(monsterc09,0,monsterc09));
  m904 = createShape(BOX, size*110, size*110,size*55);
  m904.rotateZ(radians(-20));
  m904.translate(size*120, size*-80, 0);
  m904.setFill(color(255));
  m905 = createShape(BOX, size*110,size* 110,size* 55);
  m905.rotateZ(radians(20));
  m905.translate(size*-120,size* -80, 0);
  m905.setFill(color(255));
  m906 = createShape(BOX, size*30, size*100, size*20);
  m906.translate(size*70, 0, size*200);
  m906.setFill(color(255));
  m907 = createShape(BOX, size*30, size*100, size*20);
  m907.translate(size*-70, 0, size*200);
  m907.setFill(color(255));
  m908 = createShape(BOX, size*15,size* 60,size* 20);
  m908.translate(size*70, 0, size*210);
  m908.setFill(color(0));
  m909 = createShape(BOX, size*15, size*60, size*20);
  m909.translate(size*-70, 0, size*210);
  m909.setFill(color(0));
  monster[9].addChild(m901);
  monster[9].addChild(m902);
  monster[9].addChild(m903);
  monster[9].addChild(m904);
  monster[9].addChild(m905);
  monster[9].addChild(m906);
  monster[9].addChild(m907);
  monster[9].addChild(m908);
  monster[9].addChild(m909);
}
int monsterc101 = int(random(200)),monsterc102 = int(random(200)),monsterc103 = int(random(200));;
PShape m1001, m1002, m1003, m1004, m1005, m1006, m1007, m1008, m1009;
void enemyModel10(float size)
{
  noStroke();
  monster[10] = createShape(GROUP);
  m1001 = createShape(SPHERE, size*200, size*200, size*200);
  m1001.translate(0, 0, 0);
  m1001.setFill(color(monsterc101,monsterc102,monsterc103));
  m1002 = createShape(BOX, size*150, size*150, size*50);
  m1002.rotateZ(radians(-20));
  m1002.translate(size*120, size*-80, 0);
  m1002.setFill(color(monsterc101,monsterc102,monsterc103));
  m1003 = createShape(BOX, size*150, size*150, size*50);
  m1003.rotateZ(radians(20));
  m1003.translate(size*-120, size*-80, 0);
  m1003.setFill(color(monsterc101,monsterc102,monsterc103));
  m1004 = createShape(BOX, size*110, size*110,size*55);
  m1004.rotateZ(radians(-20));
  m1004.translate(size*120, size*-80, 0);
  m1004.setFill(color(255));
  m1005 = createShape(BOX, size*110,size* 110,size* 55);
  m1005.rotateZ(radians(20));
  m1005.translate(size*-120,size* -80, 0);
  m1005.setFill(color(255));
  m1006 = createShape(BOX, size*30, size*100, size*20);
  m1006.translate(size*70, 0, size*200);
  m1006.setFill(color(255));
  m1007 = createShape(BOX, size*30, size*100, size*20);
  m1007.translate(size*-70, 0, size*200);
  m1007.setFill(color(255));
  m1008 = createShape(BOX, size*15,size* 60,size* 20);
  m1008.translate(size*70, 0, size*210);
  m1008.setFill(color(0));
  m1009 = createShape(BOX, size*15, size*60, size*20);
  m1009.translate(size*-70, 0, size*210);
  m1009.setFill(color(0));
  monster[10].addChild(m1001);
  monster[10].addChild(m1002);
  monster[10].addChild(m1003);
  monster[10].addChild(m1004);
  monster[10].addChild(m1005);
  monster[10].addChild(m1006);
  monster[10].addChild(m1007);
  monster[10].addChild(m1008);
  monster[10].addChild(m1009);
}

