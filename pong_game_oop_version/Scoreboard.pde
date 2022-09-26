
public class Scoreboard
{

  // initial score
  int scoreRight;
  int scoreLeft;
  
  // init score buffer
  int initRight;
  int initLeft;

  Scoreboard(int _scoreRight, int _scoreLeft)
  {
    scoreRight = _scoreRight;
    scoreLeft = _scoreLeft;
  }
  
  public void leftSideScore()
  {
    scoreLeft++;
  }
  
  
  public void rightSideScore()
  {
    scoreRight++;
  }
  
  public void display()
  {
    textSize(70);
    textMode(CENTER);
    text(scoreRight, 550, 100);
    text(scoreLeft, 200, 100);
  }
  
  public void gameOver()
  {
    text("Game Over!", 220, 300);
    textSize(30);
    text("Press R to restart", 280, 390);
    
    if (scoreRight >= 3)
    {
      text("Right Wins", 320, 350);
    }
    
    else
    {
      text("Left Wins", 330, 350);
    }
  }
  
  public void reset()
  {
    scoreRight = initRight;
    scoreLeft = initLeft;
  }
  
  
}
    
