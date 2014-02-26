package com.jd.droidlib.adapter.cursor;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import com.jd.droidlib.contract.AlterableContent;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.persist.sql.EntityManager;
import com.jd.droidlib.persist.sql.stmt.AbstractSelect;

public abstract class EntityCursorAdapter<EntityType extends Entity>
  extends CursorAdapter
  implements AlterableContent<AbstractSelect<EntityType>>
{
  protected final EntityManager<EntityType> entityManager;
  
  public EntityCursorAdapter(Class<EntityType> paramClass, Context paramContext)
  {
    this(paramClass, paramContext, null);
  }
  
  public EntityCursorAdapter(Class<EntityType> paramClass, Context paramContext, AbstractSelect<EntityType> paramAbstractSelect) {}
  
  private boolean requeryOnSuccess(boolean paramBoolean)
  {
    if (paramBoolean) {
      requeryData();
    }
    return paramBoolean;
  }
  
  public abstract void bindView(Context paramContext, View paramView, EntityType paramEntityType);
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    bindView(paramContext, paramView, this.entityManager.readRow(paramCursor));
  }
  
  public boolean create(EntityType paramEntityType)
  {
    return requeryOnSuccess(this.entityManager.create(paramEntityType));
  }
  
  public boolean delete(int paramInt)
  {
    long l = getItemId(paramInt);
    return requeryOnSuccess(this.entityManager.delete(l));
  }
  
  public EntityType read(int paramInt)
  {
    long l = getItemId(paramInt);
    return this.entityManager.read(l);
  }
  
  public void setContent(AbstractSelect<EntityType> paramAbstractSelect)
  {
    if (paramAbstractSelect != null) {}
    for (Cursor localCursor = paramAbstractSelect.execute();; localCursor = null)
    {
      changeCursor(localCursor);
      return;
    }
  }
  
  public boolean update(EntityType paramEntityType)
  {
    return requeryOnSuccess(this.entityManager.update(paramEntityType));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.adapter.cursor.EntityCursorAdapter
 * JD-Core Version:    0.7.0.1
 */