package com.jd.droidlib.contract;

public abstract interface SQL
{
  public static final String AND = " AND ";
  public static final String ASC = " ASC";
  public static final String BETWEEN = " BETWEEN ? AND ?";
  public static final String DESC = " DESC";
  public static final String EQUAL = " = ?";
  public static final String GREATER = " > ?";
  public static final String GREATER_OR_EQUAL = " >= ?";
  public static final String IN = " IN ";
  public static final String LESS = " < ?";
  public static final String LESS_OR_EQUAL = " <= ?";
  public static final String LIKE = " LIKE ?";
  public static final String NOT_BETWEEN = " NOT BETWEEN ? AND ?";
  public static final String NOT_EQUAL = " != ?";
  public static final String NOT_IN = " NOT IN ";
  public static final String NOT_LIKE = " NOT LIKE ?";
  public static final String NOT_NULL = " NOTNULL";
  public static final String NULL = " ISNULL";
  public static final String OR = " OR ";
  
  public static abstract interface DDL
  {
    public static final String ADD_COLUMN = " ADD COLUMN ";
    public static final String ALTER_TABLE = "ALTER TABLE ";
    public static final String BLOB = " BLOB";
    public static final String CLOSING_BRACE = ");";
    public static final String CREATE_INDEX = "CREATE INDEX ";
    public static final String CREATE_TABLE = "CREATE TABLE ";
    public static final String CREATE_UNIQUE_INDEX = "CREATE UNIQUE INDEX ";
    public static final String DEFAULT = " DEFAULT ";
    public static final String INTEGER = " INTEGER";
    public static final String NOT_NULL = " NOT NULL";
    public static final String ON = " ON ";
    public static final String OPENING_BRACE = " (";
    public static final String PK = "_id INTEGER PRIMARY KEY";
    public static final String REAL = " REAL";
    public static final String SEPARATOR = ", ";
    public static final String TEXT = " TEXT";
    public static final String UNIQUE = " UNIQUE";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.contract.SQL
 * JD-Core Version:    0.7.0.1
 */