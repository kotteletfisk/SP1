
public class Paddle
{
  float posX;
  float posY;
  int paddleHeight;
  int paddleWidth;
  
  Paddle(float _posX, int _paddleWidth, int _paddleHeight)
  {
    paddleWidth = _paddleWidth;
    paddleHeight = _paddleHeight;
    posX = _posX;
  }
  
  public void displayPlayer()
  {
    rect(posX, mouseY - 50, paddleWidth, paddleHeight);
  }
  
  
  public void displayNPC()
  {
    rect(posX, ball.ballposY-50 + pmouseY * 0.1, paddleWidth, paddleHeight);
  }
}
