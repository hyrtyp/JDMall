package com.jd.common.util.ice;

import Ice.Application;
import Ice.Communicator;
import Ice.InitializationData;
import Ice.ObjectPrx;
import Ice.Util;

public class IceGridClient
  extends Application
{
  private InitializationData initdata = new InitializationData();
  
  public ObjectPrx getIceProxy(String paramString)
  {
    return Util.initialize(this.initdata).propertyToProxy(paramString);
  }
  
  public int run(String[] paramArrayOfString)
  {
    this.initdata.properties = communicator().getProperties();
    return 0;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.ice.IceGridClient
 * JD-Core Version:    0.7.0.1
 */