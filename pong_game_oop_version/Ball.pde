

public class Ball
{
  // Initial ball position
  float ballposX;
  float ballposY;
  
  // Init position buffer
  float initposX;
  float initposY;
  
  // Init speed buffer
  float initSpeedHori;
  float initSpeedVerti;

  // ball speed
  float speedHori;
  float speedVerti;

  // ball's direction of movement
  boolean moveRight = true;
  boolean moveDown = true;


  Ball(float posX, float posY, float _speedHori, float _speedVerti)
  {
    ballposX = posX;
    ballposY = posY;
    initposX = posX;
    initposY = posY;
    speedHori = _speedHori;
    speedVerti = _speedVerti;
    initSpeedHori = _speedHori;
    initSpeedVerti = _speedVerti;
  }
  
  

  public void display()
  {
    fill(255);
    ellipse(ballposX, ballposY, 20, 20);
  }

  public void move()
  {
    //ball movement
    if (moveRight)
    {
      ballposX = ballposX + speedHori;
    }
    else
    {
      ballposX = ballposX - speedHori;
    }

    if (moveDown)
    {
      ballposY = ballposY + speedVerti;
    }
    else
    {
      ballposY = ballposY - speedVerti;
    }


    // top/bottom boundary
    if (ballposY >= 590)
    {
      moveDown = false;
    }

    if (ballposY <= 10)
    {
      moveDown = true;
    }
  }



  public void moveR()
  {
     moveRight = true;
     speedHori = speedHori + 0.5; // Increase speed when colliding with paddle.
  }
  
  public void moveL()
  {
    moveRight = false;
    speedHori = speedHori + 0.5; 
  }
  
  public void init()
  {
    // reset position
    ballposX = initposX;
    ballposY = initposY;
    speedHori = initSpeedHori;
  }
  
}
