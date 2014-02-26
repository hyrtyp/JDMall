package com.jd.common.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import javax.sql.DataSource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class Sequence
{
  private static final String GET_SQL = "select id from sequence_value where name = ?";
  private static final String NEW_SQL = "insert into sequence_value (id,name) values (?,?)";
  private static final String UPDATE_SQL = "update sequence_value set id = ?  where name = ? and id = ?";
  private static final Log log = LogFactory.getLog(Sequence.class);
  private int blockSize = 5;
  private DataSource dataSource;
  private long startValue = 0L;
  private Map<String, Step> stepMap = new HashMap();
  
  private boolean getNextBlock(String paramString, Step paramStep)
  {
    int i = 1;
    localObject = getPersistenceValue(paramString);
    if (localObject == null) {}
    try
    {
      Long localLong = newPersistenceValue(paramString);
      localObject = localLong;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        log.error("newPersistenceValue error!");
        localObject = getPersistenceValue(paramString);
        continue;
        int j = 0;
      }
    }
    if (saveValue(((Long)localObject).longValue(), paramString) == i)
    {
      if (i != 0)
      {
        paramStep.setCurrentValue(((Long)localObject).longValue());
        paramStep.setEndValue(((Long)localObject).longValue() + this.blockSize);
      }
      return i;
    }
  }
  
  private Long getPersistenceValue(String paramString)
  {
    localConnection = null;
    localPreparedStatement = null;
    localResultSet = null;
    try
    {
      localConnection = this.dataSource.getConnection();
      localPreparedStatement = localConnection.prepareStatement("select id from sequence_value where name = ?");
      localPreparedStatement.setString(1, paramString);
      localResultSet = localPreparedStatement.executeQuery();
      Long localLong;
      if (localResultSet.next())
      {
        localLong = Long.valueOf(localResultSet.getLong("id"));
        if (localResultSet != null) {}
        try
        {
          localResultSet.close();
          if (localPreparedStatement == null) {}
        }
        catch (SQLException localSQLException9)
        {
          try
          {
            localPreparedStatement.close();
            if (localConnection != null) {}
            try
            {
              localConnection.close();
              return localLong;
            }
            catch (SQLException localSQLException7)
            {
              log.error("close connection error!", localSQLException7);
              return localLong;
            }
            localSQLException9 = localSQLException9;
            log.error("close resultset error!", localSQLException9);
          }
          catch (SQLException localSQLException8)
          {
            for (;;)
            {
              log.error("close statement error!", localSQLException8);
            }
          }
        }
      }
      try
      {
        localResultSet.close();
        if (localPreparedStatement == null) {}
      }
      catch (SQLException localSQLException5)
      {
        try
        {
          localPreparedStatement.close();
          if (localConnection == null) {}
        }
        catch (SQLException localSQLException5)
        {
          try
          {
            for (;;)
            {
              localConnection.close();
              return null;
              localSQLException6 = localSQLException6;
              log.error("close resultset error!", localSQLException6);
            }
            localSQLException5 = localSQLException5;
            log.error("close statement error!", localSQLException5);
          }
          catch (SQLException localSQLException4)
          {
            for (;;)
            {
              log.error("close connection error!", localSQLException4);
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      log.error("getPersistenceValue error!", localException);
      throw new RuntimeException("getPersistenceValue error!", localException);
    }
    finally
    {
      if (localResultSet != null) {}
      try
      {
        localResultSet.close();
        if (localPreparedStatement == null) {}
      }
      catch (SQLException localSQLException2)
      {
        try
        {
          localPreparedStatement.close();
          if (localConnection == null) {}
        }
        catch (SQLException localSQLException2)
        {
          try
          {
            for (;;)
            {
              localConnection.close();
              throw localObject;
              localSQLException3 = localSQLException3;
              log.error("close resultset error!", localSQLException3);
            }
            localSQLException2 = localSQLException2;
            log.error("close statement error!", localSQLException2);
          }
          catch (SQLException localSQLException1)
          {
            for (;;)
            {
              log.error("close connection error!", localSQLException1);
            }
          }
        }
      }
      if (localResultSet == null) {}
    }
  }
  
  /* Error */
  private Long newPersistenceValue(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: getfield 89	com/jd/common/util/Sequence:dataSource	Ljavax/sql/DataSource;
    //   8: invokeinterface 95 1 0
    //   13: astore_2
    //   14: aload_2
    //   15: ldc 11
    //   17: invokeinterface 101 2 0
    //   22: astore_3
    //   23: aload_3
    //   24: iconst_1
    //   25: aload_0
    //   26: getfield 42	com/jd/common/util/Sequence:startValue	J
    //   29: invokeinterface 152 4 0
    //   34: aload_3
    //   35: iconst_2
    //   36: aload_1
    //   37: invokeinterface 107 3 0
    //   42: aload_3
    //   43: invokeinterface 156 1 0
    //   48: pop
    //   49: aload_3
    //   50: ifnull +9 -> 59
    //   53: aload_3
    //   54: invokeinterface 131 1 0
    //   59: aload_2
    //   60: ifnull +9 -> 69
    //   63: aload_2
    //   64: invokeinterface 132 1 0
    //   69: aload_0
    //   70: getfield 42	com/jd/common/util/Sequence:startValue	J
    //   73: invokestatic 127	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   76: areturn
    //   77: astore 7
    //   79: getstatic 35	com/jd/common/util/Sequence:log	Lorg/apache/commons/logging/Log;
    //   82: ldc 79
    //   84: aload 7
    //   86: invokeinterface 137 3 0
    //   91: new 145	java/lang/RuntimeException
    //   94: dup
    //   95: ldc 79
    //   97: aload 7
    //   99: invokespecial 148	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   102: athrow
    //   103: astore 4
    //   105: aload_3
    //   106: ifnull +9 -> 115
    //   109: aload_3
    //   110: invokeinterface 131 1 0
    //   115: aload_2
    //   116: ifnull +9 -> 125
    //   119: aload_2
    //   120: invokeinterface 132 1 0
    //   125: aload 4
    //   127: athrow
    //   128: astore 6
    //   130: getstatic 35	com/jd/common/util/Sequence:log	Lorg/apache/commons/logging/Log;
    //   133: ldc 139
    //   135: aload 6
    //   137: invokeinterface 137 3 0
    //   142: goto -27 -> 115
    //   145: astore 5
    //   147: getstatic 35	com/jd/common/util/Sequence:log	Lorg/apache/commons/logging/Log;
    //   150: ldc 141
    //   152: aload 5
    //   154: invokeinterface 137 3 0
    //   159: goto -34 -> 125
    //   162: astore 10
    //   164: getstatic 35	com/jd/common/util/Sequence:log	Lorg/apache/commons/logging/Log;
    //   167: ldc 139
    //   169: aload 10
    //   171: invokeinterface 137 3 0
    //   176: goto -117 -> 59
    //   179: astore 9
    //   181: getstatic 35	com/jd/common/util/Sequence:log	Lorg/apache/commons/logging/Log;
    //   184: ldc 141
    //   186: aload 9
    //   188: invokeinterface 137 3 0
    //   193: goto -124 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	Sequence
    //   0	196	1	paramString	String
    //   1	119	2	localConnection	Connection
    //   3	107	3	localPreparedStatement	PreparedStatement
    //   103	23	4	localObject	Object
    //   145	8	5	localSQLException1	SQLException
    //   128	8	6	localSQLException2	SQLException
    //   77	21	7	localException	Exception
    //   179	8	9	localSQLException3	SQLException
    //   162	8	10	localSQLException4	SQLException
    // Exception table:
    //   from	to	target	type
    //   4	49	77	java/lang/Exception
    //   4	49	103	finally
    //   79	103	103	finally
    //   109	115	128	java/sql/SQLException
    //   119	125	145	java/sql/SQLException
    //   53	59	162	java/sql/SQLException
    //   63	69	179	java/sql/SQLException
  }
  
  private int saveValue(long paramLong, String paramString)
  {
    localConnection = null;
    localPreparedStatement = null;
    try
    {
      localConnection = this.dataSource.getConnection();
      localPreparedStatement = localConnection.prepareStatement("update sequence_value set id = ?  where name = ? and id = ?");
      localPreparedStatement.setLong(1, paramLong + this.blockSize);
      localPreparedStatement.setString(2, paramString);
      localPreparedStatement.setLong(3, paramLong);
      int i = localPreparedStatement.executeUpdate();
      if (localPreparedStatement != null) {}
      try
      {
        localPreparedStatement.close();
      }
      catch (SQLException localSQLException4)
      {
        for (;;)
        {
          try
          {
            localConnection.close();
            return i;
          }
          catch (SQLException localSQLException3)
          {
            log.error("close connection error!", localSQLException3);
            return i;
          }
          localSQLException4 = localSQLException4;
          log.error("close statement error!", localSQLException4);
        }
      }
      try
      {
        localPreparedStatement.close();
      }
      catch (SQLException localSQLException2)
      {
        try
        {
          localConnection.close();
          throw localObject;
          localSQLException2 = localSQLException2;
          log.error("close statement error!", localSQLException2);
        }
        catch (SQLException localSQLException1)
        {
          for (;;)
          {
            log.error("close connection error!", localSQLException1);
          }
        }
      }
    }
    catch (Exception localException)
    {
      log.error("newPersistenceValue error!", localException);
      throw new RuntimeException("newPersistenceValue error!", localException);
    }
    finally
    {
      if (localPreparedStatement == null) {}
    }
  }
  
  public long get(String paramString)
  {
    for (;;)
    {
      Step localStep;
      try
      {
        localStep = (Step)this.stepMap.get(paramString);
        if (localStep != null) {
          break label81;
        }
        localStep = new Step(this.startValue, this.startValue + this.blockSize);
        this.stepMap.put(paramString, localStep);
      }
      finally {}
      label81:
      long l3;
      if (i >= this.blockSize)
      {
        throw new RuntimeException("No more value.");
        if (localStep.currentValue < localStep.endValue) {
          l3 = localStep.incrementAndGet();
        }
      }
      else
      {
        long l1;
        for (long l2 = l3;; l2 = l1)
        {
          return l2;
          if (!getNextBlock(paramString, localStep)) {
            break;
          }
          l1 = localStep.incrementAndGet();
        }
        i++;
        continue;
      }
      int i = 0;
    }
  }
  
  public void setBlockSize(int paramInt)
  {
    this.blockSize = paramInt;
  }
  
  public void setDataSource(DataSource paramDataSource)
  {
    this.dataSource = paramDataSource;
  }
  
  public void setStartValue(long paramLong)
  {
    this.startValue = paramLong;
  }
  
  static class Step
  {
    private long currentValue;
    private long endValue;
    
    Step(long paramLong1, long paramLong2)
    {
      this.currentValue = paramLong1;
      this.endValue = paramLong2;
    }
    
    public long incrementAndGet()
    {
      long l = 1L + this.currentValue;
      this.currentValue = l;
      return l;
    }
    
    public void setCurrentValue(long paramLong)
    {
      this.currentValue = paramLong;
    }
    
    public void setEndValue(long paramLong)
    {
      this.endValue = paramLong;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.Sequence
 * JD-Core Version:    0.7.0.1
 */