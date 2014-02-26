package com.jingdong.common.entity;

import com.jingdong.common.utils.FileService.Directory;
import java.io.File;
import java.util.Date;

public class CacheFile
{
  private Date cleanTime;
  private FileService.Directory directory;
  private File file;
  private String firstName;
  private String lastName;
  private String name;
  
  public CacheFile() {}
  
  public CacheFile(File paramFile)
  {
    setFile(paramFile);
  }
  
  public CacheFile(String paramString, long paramLong)
  {
    setName(paramString);
    this.cleanTime = new Date(paramLong + new Date().getTime());
  }
  
  public Date getCleanTime()
  {
    return this.cleanTime;
  }
  
  public FileService.Directory getDirectory()
  {
    return this.directory;
  }
  
  public File getFile()
  {
    if ((this.file == null) && (getDirectory() != null)) {
      this.file = new File(getDirectory().getDir(), getName());
    }
    return this.file;
  }
  
  public String getFirstName()
  {
    return this.firstName;
  }
  
  public String getLastName()
  {
    return this.lastName;
  }
  
  public String getName()
  {
    if (this.name == null) {
      this.name = (this.firstName + "." + this.lastName);
    }
    return this.name;
  }
  
  public void setCleanTime(Date paramDate)
  {
    this.cleanTime = paramDate;
  }
  
  public void setDirectory(FileService.Directory paramDirectory)
  {
    this.directory = paramDirectory;
  }
  
  public void setFile(File paramFile)
  {
    setName(paramFile.getName());
    this.file = paramFile;
  }
  
  public void setFirstName(String paramString)
  {
    this.firstName = paramString;
  }
  
  public void setLastName(String paramString)
  {
    this.lastName = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
    int i = paramString.lastIndexOf(".");
    this.firstName = paramString.substring(0, i);
    this.lastName = paramString.substring(i + 1);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.CacheFile
 * JD-Core Version:    0.7.0.1
 */