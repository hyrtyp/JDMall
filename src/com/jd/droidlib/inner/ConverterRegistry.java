package com.jd.droidlib.inner;

import com.jd.droidlib.inner.converter.ArrayCollectionConverter;
import com.jd.droidlib.inner.converter.BitmapConverter;
import com.jd.droidlib.inner.converter.BooleanConverter;
import com.jd.droidlib.inner.converter.ByteArrayConverter;
import com.jd.droidlib.inner.converter.ByteConverter;
import com.jd.droidlib.inner.converter.CharacterConverter;
import com.jd.droidlib.inner.converter.Converter;
import com.jd.droidlib.inner.converter.DateConverter;
import com.jd.droidlib.inner.converter.DoubleConverter;
import com.jd.droidlib.inner.converter.EntityConverter;
import com.jd.droidlib.inner.converter.EnumConverter;
import com.jd.droidlib.inner.converter.FloatConverter;
import com.jd.droidlib.inner.converter.IntegerConverter;
import com.jd.droidlib.inner.converter.JSONArrayConverter;
import com.jd.droidlib.inner.converter.JSONObjectConverter;
import com.jd.droidlib.inner.converter.LongConverter;
import com.jd.droidlib.inner.converter.ModelConverter;
import com.jd.droidlib.inner.converter.ShortConverter;
import com.jd.droidlib.inner.converter.StringConverter;
import com.jd.droidlib.inner.converter.UUIDConverter;
import com.jd.droidlib.inner.converter.UriConverter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;

public class ConverterRegistry
{
  private static final LinkedHashSet<Converter<?>> converters = new LinkedHashSet();
  private static final HashMap<Class<?>, Converter<?>> map = new HashMap();
  
  static
  {
    converters.add(new BooleanConverter());
    converters.add(new ByteConverter());
    converters.add(new CharacterConverter());
    converters.add(new DoubleConverter());
    converters.add(new FloatConverter());
    converters.add(new IntegerConverter());
    converters.add(new LongConverter());
    converters.add(new ShortConverter());
    converters.add(new StringConverter());
    converters.add(new EnumConverter());
    converters.add(new DateConverter());
    converters.add(new UUIDConverter());
    converters.add(new UriConverter());
    converters.add(new ByteArrayConverter());
    converters.add(new JSONObjectConverter());
    converters.add(new JSONArrayConverter());
    converters.add(new BitmapConverter());
    converters.add(new ModelConverter());
    converters.add(new EntityConverter());
    converters.add(new ArrayCollectionConverter());
  }
  
  public static <T> Converter<T> getConverter(Class<T> paramClass)
    throws IllegalArgumentException
  {
    Object localObject = (Converter)map.get(paramClass);
    Iterator localIterator;
    if (localObject == null)
    {
      localIterator = converters.iterator();
      if (localIterator.hasNext()) {
        break label37;
      }
    }
    for (;;)
    {
      if (localObject == null) {
        break label69;
      }
      return localObject;
      label37:
      Converter localConverter = (Converter)localIterator.next();
      if (!localConverter.canHandle(paramClass)) {
        break;
      }
      localObject = localConverter;
      map.put(paramClass, localObject);
    }
    label69:
    throw new IllegalArgumentException("No converter for '" + paramClass.getName() + "'.");
  }
  
  public static void registerConverter(Converter<?> paramConverter)
  {
    converters.add(paramConverter);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.ConverterRegistry
 * JD-Core Version:    0.7.0.1
 */