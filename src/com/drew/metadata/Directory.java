package com.drew.metadata;

import com.drew.lang.Rational;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public abstract class Directory
  implements Serializable
{
  protected final List _definedTagList = new ArrayList();
  protected TagDescriptor _descriptor;
  private List _errorList;
  protected final HashMap _tagMap = new HashMap();
  
  public void addError(String paramString)
  {
    if (this._errorList == null) {
      this._errorList = new ArrayList();
    }
    this._errorList.add(paramString);
  }
  
  public boolean containsTag(int paramInt)
  {
    return this._tagMap.containsKey(new Integer(paramInt));
  }
  
  public boolean getBoolean(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    if ((localObject instanceof Boolean)) {
      return ((Boolean)localObject).booleanValue();
    }
    if ((localObject instanceof String)) {
      try
      {
        boolean bool = Boolean.getBoolean((String)localObject);
        return bool;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new MetadataException("unable to parse string " + localObject + " as a boolean", localNumberFormatException);
      }
    }
    if ((localObject instanceof Number)) {
      return ((Number)localObject).doubleValue() != 0.0D;
    }
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to a boolean.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public byte[] getByteArray(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    Rational[] arrayOfRational;
    byte[] arrayOfByte;
    int k;
    if ((localObject instanceof Rational[]))
    {
      arrayOfRational = (Rational[])localObject;
      arrayOfByte = new byte[arrayOfRational.length];
      k = 0;
      if (k < arrayOfByte.length) {}
    }
    for (;;)
    {
      return arrayOfByte;
      arrayOfByte[k] = arrayOfRational[k].byteValue();
      k++;
      break;
      if ((localObject instanceof byte[])) {
        return (byte[])localObject;
      }
      if ((localObject instanceof int[]))
      {
        int[] arrayOfInt = (int[])localObject;
        arrayOfByte = new byte[arrayOfInt.length];
        for (int j = 0; j < arrayOfInt.length; j++) {
          arrayOfByte[j] = ((byte)arrayOfInt[j]);
        }
      }
      else
      {
        if (!(localObject instanceof String)) {
          break label206;
        }
        String str = (String)localObject;
        arrayOfByte = new byte[str.length()];
        for (int i = 0; i < str.length(); i++) {
          arrayOfByte[i] = ((byte)str.charAt(i));
        }
      }
    }
    label206:
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to a byte array.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public Date getDate(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    if ((localObject instanceof Date)) {
      return (Date)localObject;
    }
    String[] arrayOfString;
    String str;
    int i;
    if ((localObject instanceof String))
    {
      arrayOfString = new String[] { "yyyy:MM:dd HH:mm:ss", "yyyy:MM:dd HH:mm", "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm" };
      str = (String)localObject;
      i = 0;
    }
    for (;;)
    {
      if (i >= arrayOfString.length) {
        throw new MetadataException("Tag '" + paramInt + "' cannot be cast to a java.util.Date.  It is of type '" + localObject.getClass() + "'.");
      }
      try
      {
        Date localDate = new SimpleDateFormat(arrayOfString[i]).parse(str);
        return localDate;
      }
      catch (ParseException localParseException)
      {
        i++;
      }
    }
  }
  
  public String getDescription(int paramInt)
    throws MetadataException
  {
    if (this._descriptor == null) {
      throw new MetadataException("a descriptor must be set using setDescriptor(...) before descriptions can be provided");
    }
    return this._descriptor.getDescription(paramInt);
  }
  
  public double getDouble(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    if ((localObject instanceof String)) {
      try
      {
        double d = Double.parseDouble((String)localObject);
        return d;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new MetadataException("unable to parse string " + localObject + " as a double", localNumberFormatException);
      }
    }
    if ((localObject instanceof Number)) {
      return ((Number)localObject).doubleValue();
    }
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to a double.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public int getErrorCount()
  {
    return this._errorList.size();
  }
  
  public Iterator getErrors()
  {
    return this._errorList.iterator();
  }
  
  public float getFloat(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    if ((localObject instanceof String)) {
      try
      {
        float f = Float.parseFloat((String)localObject);
        return f;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new MetadataException("unable to parse string " + localObject + " as a float", localNumberFormatException);
      }
    }
    if ((localObject instanceof Number)) {
      return ((Number)localObject).floatValue();
    }
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to a float.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public int getInt(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    if ((localObject instanceof String))
    {
      byte[] arrayOfByte2;
      long l;
      int i;
      try
      {
        int j = Integer.parseInt((String)localObject);
        return j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        arrayOfByte2 = ((String)localObject).getBytes();
        l = 0L;
        i = 0;
      }
      for (;;)
      {
        if (i >= arrayOfByte2.length) {
          return (int)l;
        }
        l = (l << 8) + arrayOfByte2[i];
        i++;
      }
    }
    if ((localObject instanceof Number)) {
      return ((Number)localObject).intValue();
    }
    if ((localObject instanceof Rational[]))
    {
      Rational[] arrayOfRational = (Rational[])localObject;
      if (arrayOfRational.length == 1) {
        return arrayOfRational[0].intValue();
      }
    }
    else if ((localObject instanceof byte[]))
    {
      byte[] arrayOfByte1 = (byte[])localObject;
      if (arrayOfByte1.length == 1) {
        return arrayOfByte1[0];
      }
    }
    else if ((localObject instanceof int[]))
    {
      int[] arrayOfInt = (int[])localObject;
      if (arrayOfInt.length == 1) {
        return arrayOfInt[0];
      }
    }
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to int.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public int[] getIntArray(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    Rational[] arrayOfRational;
    int[] arrayOfInt;
    int k;
    if ((localObject instanceof Rational[]))
    {
      arrayOfRational = (Rational[])localObject;
      arrayOfInt = new int[arrayOfRational.length];
      k = 0;
      if (k < arrayOfInt.length) {}
    }
    for (;;)
    {
      return arrayOfInt;
      arrayOfInt[k] = arrayOfRational[k].intValue();
      k++;
      break;
      if ((localObject instanceof int[])) {
        return (int[])localObject;
      }
      if ((localObject instanceof byte[]))
      {
        byte[] arrayOfByte = (byte[])localObject;
        arrayOfInt = new int[arrayOfByte.length];
        for (int j = 0; j < arrayOfByte.length; j++) {
          arrayOfInt[j] = arrayOfByte[j];
        }
      }
      else
      {
        if (!(localObject instanceof String)) {
          break label204;
        }
        String str = (String)localObject;
        arrayOfInt = new int[str.length()];
        for (int i = 0; i < str.length(); i++) {
          arrayOfInt[i] = str.charAt(i);
        }
      }
    }
    label204:
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to an int array.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public long getLong(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    if ((localObject instanceof String)) {
      try
      {
        long l = Long.parseLong((String)localObject);
        return l;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new MetadataException("unable to parse string " + localObject + " as a long", localNumberFormatException);
      }
    }
    if ((localObject instanceof Number)) {
      return ((Number)localObject).longValue();
    }
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to a long.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public abstract String getName();
  
  public Object getObject(int paramInt)
  {
    return this._tagMap.get(new Integer(paramInt));
  }
  
  public Rational getRational(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    if ((localObject instanceof Rational)) {
      return (Rational)localObject;
    }
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to a Rational.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public Rational[] getRationalArray(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    if ((localObject instanceof Rational[])) {
      return (Rational[])localObject;
    }
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to a Rational array.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public String getString(int paramInt)
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      return null;
    }
    if ((localObject instanceof Rational)) {
      return ((Rational)localObject).toSimpleString(true);
    }
    if (localObject.getClass().isArray())
    {
      int i = Array.getLength(localObject);
      boolean bool = localObject.getClass().toString().startsWith("class [L");
      StringBuffer localStringBuffer = new StringBuffer();
      int j = 0;
      if (j >= i) {
        return localStringBuffer.toString();
      }
      if (j != 0) {
        localStringBuffer.append(' ');
      }
      if (bool) {
        localStringBuffer.append(Array.get(localObject, j).toString());
      }
      for (;;)
      {
        j++;
        break;
        localStringBuffer.append(Array.getInt(localObject, j));
      }
    }
    return localObject.toString();
  }
  
  public String[] getStringArray(int paramInt)
    throws MetadataException
  {
    Object localObject = getObject(paramInt);
    if (localObject == null) {
      throw new MetadataException("Tag " + getTagName(paramInt) + " has not been set -- check using containsTag() first");
    }
    String[] arrayOfString1;
    if ((localObject instanceof String[])) {
      arrayOfString1 = (String[])localObject;
    }
    for (;;)
    {
      return arrayOfString1;
      if ((localObject instanceof String))
      {
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = ((String)localObject);
        return arrayOfString2;
      }
      if ((localObject instanceof int[]))
      {
        int[] arrayOfInt = (int[])localObject;
        arrayOfString1 = new String[arrayOfInt.length];
        for (int k = 0; k < arrayOfString1.length; k++) {
          arrayOfString1[k] = Integer.toString(arrayOfInt[k]);
        }
      }
      else if ((localObject instanceof byte[]))
      {
        byte[] arrayOfByte = (byte[])localObject;
        arrayOfString1 = new String[arrayOfByte.length];
        for (int j = 0; j < arrayOfString1.length; j++) {
          arrayOfString1[j] = Byte.toString(arrayOfByte[j]);
        }
      }
      else
      {
        if (!(localObject instanceof Rational[])) {
          break;
        }
        Rational[] arrayOfRational = (Rational[])localObject;
        arrayOfString1 = new String[arrayOfRational.length];
        for (int i = 0; i < arrayOfString1.length; i++) {
          arrayOfString1[i] = arrayOfRational[i].toSimpleString(false);
        }
      }
    }
    throw new MetadataException("Tag '" + paramInt + "' cannot be cast to an String array.  It is of type '" + localObject.getClass() + "'.");
  }
  
  public int getTagCount()
  {
    return this._definedTagList.size();
  }
  
  public Iterator getTagIterator()
  {
    return this._definedTagList.iterator();
  }
  
  public String getTagName(int paramInt)
  {
    Integer localInteger = new Integer(paramInt);
    HashMap localHashMap = getTagNameMap();
    if (!localHashMap.containsKey(localInteger)) {
      for (String str = Integer.toHexString(paramInt);; str = "0" + str) {
        if (str.length() >= 4) {
          return "Unknown tag (0x" + str + ")";
        }
      }
    }
    return (String)localHashMap.get(localInteger);
  }
  
  protected abstract HashMap getTagNameMap();
  
  public boolean hasErrors()
  {
    return (this._errorList != null) && (this._errorList.size() > 0);
  }
  
  public void setBoolean(int paramInt, boolean paramBoolean)
  {
    setObject(paramInt, new Boolean(paramBoolean));
  }
  
  public void setByteArray(int paramInt, byte[] paramArrayOfByte)
  {
    setObjectArray(paramInt, paramArrayOfByte);
  }
  
  public void setDate(int paramInt, Date paramDate)
  {
    setObject(paramInt, paramDate);
  }
  
  public void setDescriptor(TagDescriptor paramTagDescriptor)
  {
    if (paramTagDescriptor == null) {
      throw new NullPointerException("cannot set a null descriptor");
    }
    this._descriptor = paramTagDescriptor;
  }
  
  public void setDouble(int paramInt, double paramDouble)
  {
    setObject(paramInt, new Double(paramDouble));
  }
  
  public void setFloat(int paramInt, float paramFloat)
  {
    setObject(paramInt, new Float(paramFloat));
  }
  
  public void setInt(int paramInt1, int paramInt2)
  {
    setObject(paramInt1, new Integer(paramInt2));
  }
  
  public void setIntArray(int paramInt, int[] paramArrayOfInt)
  {
    setObjectArray(paramInt, paramArrayOfInt);
  }
  
  public void setLong(int paramInt, long paramLong)
  {
    setObject(paramInt, new Long(paramLong));
  }
  
  public void setObject(int paramInt, Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("cannot set a null object");
    }
    Integer localInteger = new Integer(paramInt);
    if (!this._tagMap.containsKey(localInteger)) {
      this._definedTagList.add(new Tag(paramInt, this));
    }
    this._tagMap.put(localInteger, paramObject);
  }
  
  public void setObjectArray(int paramInt, Object paramObject)
  {
    setObject(paramInt, paramObject);
  }
  
  public void setRational(int paramInt, Rational paramRational)
  {
    setObject(paramInt, paramRational);
  }
  
  public void setRationalArray(int paramInt, Rational[] paramArrayOfRational)
  {
    setObjectArray(paramInt, paramArrayOfRational);
  }
  
  public void setString(int paramInt, String paramString)
  {
    setObject(paramInt, paramString);
  }
  
  public void setStringArray(int paramInt, String[] paramArrayOfString)
  {
    setObjectArray(paramInt, paramArrayOfString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.Directory
 * JD-Core Version:    0.7.0.1
 */