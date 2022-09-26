

void setup()
{
  size(800, 600);
  background(0);
  frameRate(120); // ;)
  rectMode(CORNER);
}

Ball ball = new Ball(400, 300, 3, 4);
Paddle player = new Paddle(20, 20, 100);
Paddle npc = new Paddle(760, 20, 100);
Scoreboard scoreboard = new Scoreboard(0, 0);



void draw()
{
  background(0);

  scoreboard.display();
  player.displayPlayer();
  npc.displayNPC();
  ball.display();
  ball.move();

  // player paddle collision
  if (Util.isInsideRect(player.posX, mouseY-50, 20, 100, ball.ballposX-10, ball.ballposY))
  {
    ball.moveR();
  }

  // NPC paddle collision
  if (Util.isInsideRect(npc.posX, ball.ballposY-50 + pmouseY * 0.1, 20, 100, ball.ballposX+10, ball.ballposY))
  {
    ball.moveL();
  }

  // right side score
  if (Util.isInsideRect(0, 0, 20, 600, ball.ballposX, ball.ballposY))
  {
    scoreboard.rightSideScore();
    ball.init();
    delay(2000);
  }

  // left side score
  if (Util.isInsideRect(780, 0, 20, 600, ball.ballposX, ball.ballposY))
  {
    scoreboard.leftSideScore();
    ball.init();
    delay(2000);
  }

  // after 3 points, game ends
  if (scoreboard.scoreRight >= 3 || scoreboard.scoreLeft >= 3)
  {
    scoreboard.gameOver();
    noLoop();
  }
}


// Reset and play again
void keyPressed()
{
  if (key == 'r' && scoreboard.scoreRight >= 3 || scoreboard.scoreLeft >= 3)
  {
    scoreboard.reset();
    ball.init();
    delay(2000);
    loop();
  }
}
