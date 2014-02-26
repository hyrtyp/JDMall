package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FloorDetailsResult
{
  public int code = -1;
  public int floorCnt = 0;
  public ArrayList<FloorModel> floorModels;
  
  public FloorDetailsResult(JSONObjectProxy paramJSONObjectProxy)
  {
    if (paramJSONObjectProxy != null) {}
    try
    {
      this.code = paramJSONObjectProxy.getInt("code");
      this.floorCnt = paramJSONObjectProxy.optInt("floorCnt");
      if (this.floorCnt > 0)
      {
        this.floorModels = new ArrayList(this.floorCnt);
        localJSONArray = paramJSONObjectProxy.optJSONArray("modelFloorList");
        if (localJSONArray != null)
        {
          int i = localJSONArray.length();
          if (i > 0)
          {
            this.floorCnt = i;
            j = 0;
            if (j < this.floorCnt) {
              break label110;
            }
          }
        }
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        JSONArray localJSONArray;
        int j;
        this.code = -1;
        continue;
        label110:
        JSONObject localJSONObject = localJSONArray.optJSONObject(j);
        if (localJSONObject != null)
        {
          FloorModel localFloorModel = new FloorModel(localJSONObject);
          this.floorModels.add(localFloorModel);
        }
        j++;
      }
    }
  }
  
  public boolean hasDetails()
  {
    return (this.code == 0) && (this.floorCnt > 0);
  }
  
  public class ColItem
    implements Comparable<ColItem>
  {
    public int colNum;
    public String functionId;
    public String param;
    public int sortNum;
    public String title;
    public int type;
    public String url;
    
    ColItem(JSONObject paramJSONObject)
    {
      if (paramJSONObject != null)
      {
        this.colNum = paramJSONObject.optInt("colNum");
        this.title = paramJSONObject.optString("title");
        this.url = paramJSONObject.optString("url");
        this.sortNum = paramJSONObject.optInt("sortNum");
        this.functionId = paramJSONObject.optString("functionId");
        this.type = paramJSONObject.optInt("type");
        this.param = paramJSONObject.optString("param");
      }
    }
    
    public int compareTo(ColItem paramColItem)
    {
      if (paramColItem == null) {}
      do
      {
        return 0;
        if (this.colNum < paramColItem.colNum) {
          return -1;
        }
        if (this.colNum > paramColItem.colNum) {
          return 1;
        }
        if (this.sortNum < paramColItem.sortNum) {
          return -1;
        }
      } while (this.sortNum <= paramColItem.sortNum);
      return 1;
    }
    
    public JSONObjectProxy getParamsJson()
    {
      int i = 0;
      JSONObjectProxy localJSONObjectProxy = new JSONObjectProxy();
      String[] arrayOfString1;
      if (!TextUtils.isEmpty(this.param))
      {
        arrayOfString1 = this.param.trim().split(",");
        int j = arrayOfString1.length;
        if (i < j) {}
      }
      else
      {
        return localJSONObjectProxy;
      }
      String[] arrayOfString2 = arrayOfString1[i].trim().split("=");
      if (arrayOfString2.length < 2) {}
      for (;;)
      {
        i++;
        break;
        try
        {
          localJSONObjectProxy.put(arrayOfString2[0], arrayOfString2[1]);
        }
        catch (JSONException localJSONException) {}
      }
    }
  }
  
  public class FloorModel
  {
    public int colCnt;
    public int floorId;
    public String floorName;
    public ArrayList<FloorDetailsResult.ColItem[]> items;
    
    FloorModel(JSONObject paramJSONObject)
    {
      JSONArray localJSONArray;
      ArrayList localArrayList1;
      int j;
      int k;
      ArrayList localArrayList2;
      Iterator localIterator1;
      FloorDetailsResult.ColItem[] arrayOfColItem2;
      int n;
      Iterator localIterator3;
      if (paramJSONObject != null)
      {
        this.floorId = paramJSONObject.optInt("floorId");
        this.floorName = paramJSONObject.optString("floorName");
        this.colCnt = paramJSONObject.optInt("colCnt");
        if (this.colCnt > 0)
        {
          this.items = new ArrayList(this.colCnt);
          localJSONArray = paramJSONObject.optJSONArray("childModelList");
          if (localJSONArray != null)
          {
            int i = localJSONArray.length();
            if (i > 0)
            {
              localArrayList1 = new ArrayList(i);
              j = 0;
              if (j < i) {
                break label202;
              }
              Collections.sort(localArrayList1);
              k = 0;
              localArrayList2 = new ArrayList(2);
              localIterator1 = localArrayList1.iterator();
              if (localIterator1.hasNext()) {
                break label237;
              }
              if ((localArrayList2 != null) && (localArrayList2.size() > 0))
              {
                arrayOfColItem2 = new FloorDetailsResult.ColItem[localArrayList2.size()];
                n = 0;
                localIterator3 = localArrayList2.iterator();
              }
            }
          }
        }
      }
      for (;;)
      {
        if (!localIterator3.hasNext())
        {
          this.items.add(arrayOfColItem2);
          localArrayList2.clear();
          return;
          label202:
          JSONObject localJSONObject = localJSONArray.optJSONObject(j);
          if (localJSONObject != null) {
            localArrayList1.add(new FloorDetailsResult.ColItem(FloorDetailsResult.this, localJSONObject));
          }
          j++;
          break;
          label237:
          FloorDetailsResult.ColItem localColItem = (FloorDetailsResult.ColItem)localIterator1.next();
          FloorDetailsResult.ColItem[] arrayOfColItem1;
          int m;
          Iterator localIterator2;
          if (localColItem.colNum != k) {
            if ((localArrayList2 != null) && (localArrayList2.size() > 0))
            {
              arrayOfColItem1 = new FloorDetailsResult.ColItem[localArrayList2.size()];
              m = 0;
              localIterator2 = localArrayList2.iterator();
            }
          }
          for (;;)
          {
            if (!localIterator2.hasNext())
            {
              this.items.add(arrayOfColItem1);
              localArrayList2.clear();
              k = localColItem.colNum;
              localArrayList2.add(localColItem);
              break;
            }
            arrayOfColItem1[m] = ((FloorDetailsResult.ColItem)localIterator2.next());
            m++;
          }
        }
        arrayOfColItem2[n] = ((FloorDetailsResult.ColItem)localIterator3.next());
        n++;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.FloorDetailsResult
 * JD-Core Version:    0.7.0.1
 */