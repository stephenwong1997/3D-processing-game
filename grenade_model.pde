int HEcolour = 200;
boolean grenade = false;
PShape HEgrenade, HEmain, HEbox01, HEbox02, HEbox03, HEbox04, HEbox05, 
HEbox06, HEbox07, HEbox08, HEbox09, HEbox10, HEbox11, HEbox12, HEtr01, 
HEtr02, HEtr03, HEtr04;

void grenadeModel()
{
    //create grenade
  HEgrenade = createShape(GROUP);
  //ovalpart
  noStroke();
  HEmain = createShape(SPHERE, 100);
  HEmain.scale(1, 1, 1.3);
  HEmain.setFill(color(HEcolour));
  HEmain.translate(0, 0, 0);
  //grippart01
  stroke(10);
  HEbox01 = createShape(BOX, 50, 200, 50);
  HEbox01.setFill(color(HEcolour));
  HEbox01.translate(0, 0, 0);
  //grippart02
  HEbox02 = createShape(BOX, 50, 200, 50);
  HEbox02.setFill(color(HEcolour));
  HEbox02.translate(0, 0, 0);
  HEbox02.rotateZ(radians(45));
  //grippart03
  HEbox03 = createShape(BOX, 50, 200, 50);
  HEbox03.setFill(color(HEcolour));
  HEbox03.translate(0, 0, 0);
  HEbox03.rotateZ(radians(90));
  //grippart04
  HEbox04 = createShape(BOX, 50, 200, 50);
  HEbox04.setFill(color(HEcolour));
  HEbox04.translate(0, 0, 0);
  HEbox04.rotateZ(radians(135));
  //grippart05
  HEbox05 = createShape(BOX, 50, 230, 50);
  HEbox05.setFill(color(HEcolour));
  HEbox05.translate(0, 0, 0);
  HEbox05.rotateZ(radians(0));
  HEbox05.rotateX(radians(45));
  //grippart06
  HEbox06 = createShape(BOX, 50, 230, 50);
  HEbox06.setFill(color(HEcolour));
  HEbox06.translate(0, 0, 0);
  HEbox06.rotateZ(radians(45));
  HEbox06.rotateX(radians(45));
  //grippart07
  HEbox07 = createShape(BOX, 50, 230, 50);
  HEbox07.setFill(color(HEcolour));
  HEbox07.translate(0, 0, 0);
  HEbox07.rotateZ(radians(90));
  HEbox07.rotateX(radians(45));
  //grippart08
  HEbox08 = createShape(BOX, 50, 230, 50);
  HEbox08.setFill(color(HEcolour));
  HEbox08.translate(0, 0, 0);
  HEbox08.rotateZ(radians(135));
  HEbox08.rotateX(radians(45));
  //grippart09
  HEbox09 = createShape(BOX, 50, 230, 50);
  HEbox09.setFill(color(HEcolour));
  HEbox09.translate(0, 0, 0);
  HEbox09.rotateZ(radians(180));
  HEbox09.rotateX(radians(45));
  //grippart10
  HEbox10 = createShape(BOX, 50, 230, 50);
  HEbox10.setFill(color(HEcolour));
  HEbox10.translate(0, 0, 0);
  HEbox10.rotateZ(radians(225));
  HEbox10.rotateX(radians(45));
  //grippart11
  HEbox11 = createShape(BOX, 50, 230, 50);
  HEbox11.setFill(color(HEcolour));
  HEbox11.translate(0, 0, 0);
  HEbox11.rotateZ(radians(270));
  HEbox11.rotateX(radians(45));
  //grippart12
  HEbox12 = createShape(BOX, 50, 230, 50);
  HEbox12.setFill(color(HEcolour));
  HEbox12.translate(0, 0, 0);
  HEbox12.rotateZ(radians(315));
  HEbox12.rotateX(radians(45));
  //throwpart01
  HEtr01 = createShape(BOX, 60, 60, 100);
  HEtr01.setFill(color(HEcolour));
  HEtr01.translate(0, 0, 140);
  //throwpart02
  HEtr02 = createShape(BOX, 100, 70, 70);
  HEtr02.setFill(color(HEcolour));
  HEtr02.translate(-15, 0, 180);
  //throwpart03
  HEtr03 = createShape(BOX, 200, 70, 10);
  HEtr03.setFill(color(HEcolour));
  HEtr03.translate(-110, 0, 120);
  HEtr03.rotateY(radians(-60));
  //throwpart04
  HEtr04 = createShape(BOX, 10, 70, 100);
  HEtr04.setFill(color(HEcolour));
  HEtr04.translate(-155, 0, 0);
  //addChild to make group
  HEgrenade.addChild(HEmain);
  HEgrenade.addChild(HEbox01);
  HEgrenade.addChild(HEbox02);
  HEgrenade.addChild(HEbox03);
  HEgrenade.addChild(HEbox04);
  HEgrenade.addChild(HEbox05);
  HEgrenade.addChild(HEbox06);
  HEgrenade.addChild(HEbox07);
  HEgrenade.addChild(HEbox08);
  HEgrenade.addChild(HEbox09);
  HEgrenade.addChild(HEbox10);
  HEgrenade.addChild(HEbox11);
  HEgrenade.addChild(HEbox12);
  HEgrenade.addChild(HEtr01);
  HEgrenade.addChild(HEtr02);
  HEgrenade.addChild(HEtr03);
  HEgrenade.addChild(HEtr04);
  HEgrenade.scale(0.1,0.1,0.1);
}
