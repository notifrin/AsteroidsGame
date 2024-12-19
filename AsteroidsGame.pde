//your variable declarations here
Spaceship ship = new Spaceship();
Star [] star = new Star[500];
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();
public void setup() {
  //your code here
  size(500, 500);
  for (int i = 0; i < star.length; i++) {
    star[i] = new Star();
  }
  for (int i = 0; i < 6; i++) {
    rock.add(new Asteroid());
  }
}
public void draw() {
  //your code here
  background(0);
  for (int i = 0; i < star.length; i++) {
    star[i].show();
  }
  ship.move();
  ship.show();
  for (int i = 0; i < rock.size(); i++) {
    (rock.get(i)).move();
    (rock.get(i)).show();
    if (dist((float)ship.getX(), (float)ship.getY(), (float)(rock.get(i)).myCenterX, (float)(rock.get(i)).myCenterY) <= 20) {
      rock.remove(i);

    }
  }
}
public void keyPressed() {
  if (key == 'a') {
    ship.turn(-20);
  }
  if (key == 'd') {
    ship.turn(20);
  }
  if (key == 'w') {
    ship.accelerate(0.2);
  }
  if (key == 's') {
    ship.accelerate(-0.2);
  }
  if (key == 'h') {
    //hyperspace
    ship.hyperspace();
  }
}
