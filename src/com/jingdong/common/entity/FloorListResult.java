package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FloorListResult
{
  public int code = -1;
  public ArrayList<Floor> floors;
  
  public FloorListResult(JSONObjectProxy paramJSONObjectProxy)
  {
    if (paramJSONObjectProxy != null) {}
    try
    {
      this.code = paramJSONObjectProxy.getInt("code");
      this.floors = new ArrayList(0);
      localJSONArray = paramJSONObjectProxy.optJSONArray("floorList");
      if ((localJSONArray != null) && (localJSONArray.length() > 0))
      {
        i = 0;
        if (i < localJSONArray.length()) {}
      }
      else
      {
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        JSONArray localJSONArray;
        int i;
        this.code = -1;
        continue;
        JSONObject localJSONObject = localJSONArray.optJSONObject(i);
        if (localJSONObject != null)
        {
          Floor localFloor = new Floor(localJSONObject);
          this.floors.add(localFloor);
        }
        i++;
      }
    }
  }
  
  public boolean hasFloor()
  {
    return (this.code == 0) && (this.floors != null) && (this.floors.size() > 0);
  }
  
  public class Floor
  {
    public String create;
    public int floorId;
    public String floorName;
    public int floorSortNo;
    public String modify;
    public int status;
    public int templeType;
    
    Floor(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        this.floorId = paramJSONObject.optInt("floorId");
        this.floorSortNo = paramJSONObject.optInt("floorSortNo");
        this.floorName = paramJSONObject.optString("floorName");
        this.templeType = paramJSONObject.optInt("templeType");
        this.status = paramJSONObject.optInt("status");
        this.create = paramJSONObject.optString("create");
        this.modify = paramJSONObject.optString("modify");
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.FloorListResult
 * JD-Core Version:    0.7.0.1
 */