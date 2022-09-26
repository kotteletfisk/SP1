
public static class Util
{

  //isInRange
 static public boolean isInRange(float begin, float end, float value)
  {
    return(value >= begin && value <= end);
  }


  //isInsideRect
 static public boolean isInsideRect(float rcx, float rcy, float rectWidth, float rectHeight, float px, float py)
  {
    return isInRange(rcx, rcx + rectWidth, px) && isInRange(rcy, rcy + rectHeight, py);
  }
}
