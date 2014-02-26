package com.jd.droidlib.adapter.cursor;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import com.jd.droidlib.Injector;
import com.jd.droidlib.annotation.inject.InjectSystemService;

public abstract class CursorAdapter
  extends android.widget.CursorAdapter
{
  private final Context ctx;
  @InjectSystemService
  protected LayoutInflater layoutInflater;
  
  public CursorAdapter(Context paramContext, Cursor paramCursor)
  {
    super(paramContext, paramCursor);
    this.ctx = paramContext.getApplicationContext();
    Injector.inject(paramContext, this);
  }
  
  public Context getContext()
  {
    return this.ctx;
  }
  
  public void requeryData()
  {
    Cursor localCursor = getCursor();
    if (localCursor != null) {
      localCursor.requery();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.adapter.cursor.CursorAdapter
 * JD-Core Version:    0.7.0.1
 */