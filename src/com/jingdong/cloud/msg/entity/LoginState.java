package com.jingdong.cloud.msg.entity;

public class LoginState
{
  private static boolean isHasLogin = false;
  
  public static boolean isHasLogin()
  {
    return isHasLogin;
  }
  
  public static void setHasLogin(boolean paramBoolean)
  {
    isHasLogin = paramBoolean;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.entity.LoginState
 * JD-Core Version:    0.7.0.1
 */