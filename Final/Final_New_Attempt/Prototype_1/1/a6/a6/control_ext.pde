boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

void keyPressed()
{
  if (keyCode == UP)
  {
    upPressed = true;
  }

  if (keyCode == DOWN)
  {
    downPressed = true;
  }

  if (keyCode == LEFT)
  {
    leftPressed = true;
  }

  if (keyCode == RIGHT)
  {
    rightPressed = true;
  }
}

void keyReleased()
{
  if (keyCode == UP)
  {
    upPressed = false;
  }

  if (keyCode == DOWN)
  {
    downPressed = false;
  }

  if (keyCode == LEFT)
  {
    leftPressed = false;
  }

  if (keyCode == RIGHT)
  {
    rightPressed = false;
  }
}