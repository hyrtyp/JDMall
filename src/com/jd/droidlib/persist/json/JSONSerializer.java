package com.jd.droidlib.persist.json;

import android.content.Context;
import android.util.Log;
import android.util.Pair;
import com.jd.droidlib.Injector;
import com.jd.droidlib.inner.ClassSpecRegistry;
import com.jd.droidlib.inner.ConverterRegistry;
import com.jd.droidlib.inner.PersistUtils;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.inner.ann.FieldSpec;
import com.jd.droidlib.inner.ann.json.KeyAnn;
import com.jd.droidlib.inner.converter.Converter;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.util.L;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONSerializer
{
  public static final String __ = "->\035";
  private Context ctx;
  
  public JSONSerializer(Context paramContext)
  {
    if (paramContext != null)
    {
      this.ctx = paramContext.getApplicationContext();
      Injector.inject(paramContext, this);
    }
  }
  
  private Pair<String, String> getNestedKeyParts(String paramString)
  {
    int i = paramString.indexOf("->\035");
    if (i != -1) {
      return Pair.create(paramString.substring(0, i), paramString.substring(i + "->\035".length()));
    }
    return null;
  }
  
  private void readFromJSONAndSetFieldVal(Model paramModel, FieldSpec<KeyAnn> paramFieldSpec, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    Pair localPair = getNestedKeyParts(paramString);
    if (localPair != null)
    {
      String str = (String)localPair.first;
      if (hasNonNull(paramJSONObject, str))
      {
        readFromJSONAndSetFieldVal(paramModel, paramFieldSpec, paramJSONObject.getJSONObject(str), (String)localPair.second);
        return;
      }
      throwIfRequired(paramFieldSpec);
      return;
    }
    if (paramJSONObject.has(paramString)) {
      try
      {
        Object localObject = readFromJSON(paramFieldSpec.field.getType(), paramFieldSpec.componentType, paramJSONObject, paramString);
        if (!JSONObject.NULL.equals(localObject))
        {
          if ("[]".equals(localObject)) {
            localObject = "";
          }
          ReflectionUtils.setFieldVal(paramModel, paramFieldSpec.field, localObject);
          return;
        }
      }
      catch (Exception localException)
      {
        if (((KeyAnn)paramFieldSpec.ann).optional)
        {
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = ((KeyAnn)paramFieldSpec.ann).name;
          arrayOfObject1[1] = localException.getMessage();
          L.w("Failed to deserialize '%s': %s.", arrayOfObject1);
          return;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = ((KeyAnn)paramFieldSpec.ann).name;
          L.i("Received NULL '%s', skipping.", arrayOfObject2);
          return;
        }
        throw new JSONException(Log.getStackTraceString(localException));
      }
    }
    throwIfRequired(paramFieldSpec);
  }
  
  private void readFromModelAndPutToJSON(Model paramModel, FieldSpec<KeyAnn> paramFieldSpec, JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    Pair localPair = getNestedKeyParts(paramString);
    if (localPair != null)
    {
      String str = (String)localPair.first;
      JSONObject localJSONObject;
      if (hasNonNull(paramJSONObject, str)) {
        localJSONObject = paramJSONObject.getJSONObject(str);
      }
      for (;;)
      {
        readFromModelAndPutToJSON(paramModel, paramFieldSpec, localJSONObject, (String)localPair.second);
        return;
        localJSONObject = new JSONObject();
        paramJSONObject.put(str, localJSONObject);
      }
    }
    Object localObject = ReflectionUtils.getFieldVal(paramModel, paramFieldSpec.field);
    try
    {
      putToJSONObject(paramJSONObject, paramString, paramFieldSpec.field.getType(), paramFieldSpec.componentType, localObject);
      return;
    }
    catch (Exception localException)
    {
      if (((KeyAnn)paramFieldSpec.ann).optional)
      {
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = paramModel.getClass().getSimpleName();
        arrayOfObject[1] = paramFieldSpec.field.getName();
        arrayOfObject[2] = localException.getMessage();
        L.w("Failded to serialize %s.%s: %s.", arrayOfObject);
        return;
      }
      throw new JSONException(Log.getStackTraceString(localException));
    }
  }
  
  private void throwIfRequired(FieldSpec<KeyAnn> paramFieldSpec)
    throws JSONException
  {
    if (!((KeyAnn)paramFieldSpec.ann).optional) {
      throw new JSONException("Required key '" + ((KeyAnn)paramFieldSpec.ann).name + "' not present.");
    }
  }
  
  public <T extends Model> T deserialize(JSONObject paramJSONObject, T paramT)
    throws JSONException
  {
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getJsonKeySpecs(paramT.getClass());
    int i = arrayOfFieldSpec.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return paramT;
      }
      FieldSpec localFieldSpec = arrayOfFieldSpec[j];
      readFromJSONAndSetFieldVal(paramT, localFieldSpec, paramJSONObject, ((KeyAnn)localFieldSpec.ann).name);
    }
  }
  
  public Model deserialize(JSONObject paramJSONObject, Class<? extends Model> paramClass)
    throws JSONException
  {
    Model localModel = (Model)ReflectionUtils.newInstance(paramClass);
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getJsonKeySpecs(paramClass);
    int i = arrayOfFieldSpec.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localModel;
      }
      FieldSpec localFieldSpec = arrayOfFieldSpec[j];
      readFromJSONAndSetFieldVal(localModel, localFieldSpec, paramJSONObject, ((KeyAnn)localFieldSpec.ann).name);
    }
  }
  
  public ArrayList<Model> deserialize(JSONArray paramJSONArray, Class<? extends Model> paramClass)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0;; i++)
    {
      if (i >= paramJSONArray.length()) {
        return localArrayList;
      }
      localArrayList.add(deserialize(paramJSONArray.getJSONObject(i), paramClass));
    }
  }
  
  public <T extends Model> ArrayList<T> deserialize(JSONArray paramJSONArray, ArrayList<T> paramArrayList)
    throws JSONException
  {
    if (paramArrayList == null) {
      paramArrayList = new ArrayList();
    }
    for (int i = 0;; i++)
    {
      if (i >= paramJSONArray.length()) {
        return paramArrayList;
      }
      paramArrayList.add(deserialize(paramJSONArray.getJSONObject(i), null));
    }
  }
  
  public Context getContext()
  {
    return this.ctx;
  }
  
  protected boolean hasNonNull(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    return PersistUtils.hasNonNull(paramJSONObject, paramString);
  }
  
  protected <T> void putToJSONObject(JSONObject paramJSONObject, String paramString, Class<T> paramClass, Class<?> paramClass1, Object paramObject)
    throws Exception
  {
    if (paramObject == null)
    {
      paramJSONObject.put(paramString, JSONObject.NULL);
      return;
    }
    ConverterRegistry.getConverter(paramClass).putToJSON(paramClass, paramClass1, paramJSONObject, paramString, paramObject);
  }
  
  protected <T, V> Object readFromJSON(Class<T> paramClass, Class<V> paramClass1, JSONObject paramJSONObject, String paramString)
    throws Exception
  {
    Object localObject = paramJSONObject.get(paramString);
    if (JSONObject.NULL.equals(localObject)) {
      return localObject;
    }
    return ConverterRegistry.getConverter(paramClass).readFromJSON(paramClass, paramClass1, paramJSONObject, paramString);
  }
  
  public JSONArray serialize(Collection<Model> paramCollection)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramCollection.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localJSONArray;
      }
      localJSONArray.put(serialize((Model)localIterator.next()));
    }
  }
  
  public JSONObject serialize(Model paramModel)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    FieldSpec[] arrayOfFieldSpec = ClassSpecRegistry.getJsonKeySpecs(paramModel.getClass());
    int i = arrayOfFieldSpec.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localJSONObject;
      }
      FieldSpec localFieldSpec = arrayOfFieldSpec[j];
      readFromModelAndPutToJSON(paramModel, localFieldSpec, localJSONObject, ((KeyAnn)localFieldSpec.ann).name);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.json.JSONSerializer
 * JD-Core Version:    0.7.0.1
 */