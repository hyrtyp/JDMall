package com.jd.droidlib.util.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import com.jd.droidlib.adapter.widget.ArrayAdapter;
import com.jd.droidlib.util.L;
import java.io.File;
import java.util.ArrayList;

public class ImagePicker
{
  private static final int RC_CHOOSE_FROM_LIBRARY = 8405;
  private static final int RC_TAKE_A_PICTURE = 1405;
  private final Activity activity;
  private final Listener listener;
  
  public ImagePicker(Activity paramActivity, Listener paramListener)
  {
    this.activity = paramActivity;
    this.listener = paramListener;
  }
  
  private static Bitmap readFromUri(Context paramContext, Uri paramUri)
  {
    try
    {
      Bitmap localBitmap = MediaStore.Images.Media.getBitmap(paramContext.getContentResolver(), paramUri);
      return localBitmap;
    }
    catch (Exception localException)
    {
      L.w(localException);
    }
    return null;
  }
  
  protected Localization getLocalization()
  {
    Localization localLocalization = new Localization();
    localLocalization.takeAPicture = "Take a Picture";
    localLocalization.chooseFromLibrary = "Choose from Library";
    localLocalization.delete = "Delete";
    localLocalization.cancel = "Cancel";
    return localLocalization;
  }
  
  protected File getTmpFile()
  {
    return new File(Environment.getExternalStorageDirectory(), "tmp.pic");
  }
  
  public boolean handleActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Bitmap localBitmap = null;
    boolean bool = false;
    switch (paramInt1)
    {
    }
    for (;;)
    {
      if (localBitmap != null) {
        this.listener.didPickImage(localBitmap);
      }
      return bool;
      bool = true;
      localBitmap = null;
      if (paramInt2 == -1)
      {
        File localFile = getTmpFile();
        localBitmap = readFromUri(this.activity, Uri.fromFile(localFile));
        localFile.delete();
        continue;
        bool = true;
        localBitmap = null;
        if (paramInt2 == -1) {
          localBitmap = readFromUri(this.activity, paramIntent.getData());
        }
      }
    }
  }
  
  public void showDialog(boolean paramBoolean)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.activity);
    ProfilePictureAdapter localProfilePictureAdapter = new ProfilePictureAdapter(paramBoolean);
    localBuilder.setAdapter(localProfilePictureAdapter, localProfilePictureAdapter);
    localBuilder.setNeutralButton(getLocalization().cancel, null);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(true);
    localAlertDialog.show();
  }
  
  public static abstract interface Listener
  {
    public abstract void didPickImage(Bitmap paramBitmap);
  }
  
  public static class Localization
  {
    public String cancel;
    public String chooseFromLibrary;
    public String delete;
    public String takeAPicture;
  }
  
  private class ProfilePictureAdapter
    extends ArrayAdapter<String>
    implements DialogInterface.OnClickListener
  {
    private final boolean cameraAvailable = ImagePicker.this.activity.getPackageManager().hasSystemFeature("android.hardware.camera");
    
    public ProfilePictureAdapter(boolean paramBoolean)
    {
      super(new ArrayList());
      ImagePicker.Localization localLocalization = ImagePicker.this.getLocalization();
      ArrayList localArrayList = new ArrayList();
      if (this.cameraAvailable) {
        localArrayList.add(localLocalization.takeAPicture);
      }
      localArrayList.add(localLocalization.chooseFromLibrary);
      if (paramBoolean) {
        localArrayList.add(localLocalization.delete);
      }
      setContent(localArrayList);
    }
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      int i = -1;
      Intent localIntent = null;
      switch (paramInt)
      {
      }
      for (;;)
      {
        if (localIntent != null) {}
        try
        {
          ImagePicker.this.activity.startActivityForResult(localIntent, i);
          return;
        }
        catch (Exception localException)
        {
          L.w(localException);
          new AbstractDialogFactory(ImagePicker.this.activity).showErrorToast();
        }
        localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
        localIntent.putExtra("output", Uri.fromFile(ImagePicker.this.getTmpFile()));
        i = 1405;
        continue;
        localIntent = new Intent("android.intent.action.GET_CONTENT");
        localIntent.setType("image/*");
        i = 8405;
        continue;
        ImagePicker.this.listener.didPickImage(null);
        localIntent = null;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.ui.ImagePicker
 * JD-Core Version:    0.7.0.1
 */