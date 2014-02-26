package com.jd.droidlib.inner.ann.bus;

import com.jd.droidlib.annotation.bus.ReceiveEvents;
import com.jd.droidlib.inner.ann.Ann;
import com.jd.droidlib.util.Strings;

public final class ReceiveEventsAnn
  extends Ann<ReceiveEvents>
{
  public final String[] names;
  
  public ReceiveEventsAnn(ReceiveEvents paramReceiveEvents)
  {
    super(paramReceiveEvents);
    String[] arrayOfString;
    if (hackSuccess())
    {
      arrayOfString = (String[])getElement("name");
      cleanup();
      if ((arrayOfString.length != i) || (!Strings.isEmpty(arrayOfString[0]))) {
        break label66;
      }
    }
    for (;;)
    {
      if (i == 0) {
        break label71;
      }
      this.names = new String[0];
      return;
      arrayOfString = paramReceiveEvents.name();
      break;
      label66:
      i = 0;
    }
    label71:
    this.names = arrayOfString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ann.bus.ReceiveEventsAnn
 * JD-Core Version:    0.7.0.1
 */