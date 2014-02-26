package com.jingdong.common.animation;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class Rotate3d
  extends Animation
{
  public static final int ROTATE_X = 0;
  public static final int ROTATE_XY = 3;
  public static final int ROTATE_XYZ = 6;
  public static final int ROTATE_XZ = 4;
  public static final int ROTATE_Y = 1;
  public static final int ROTATE_YZ = 5;
  public static final int ROTATE_Z = 2;
  private Camera mCamera;
  private float mCenterX;
  private float mCenterY;
  private float mFromDegree;
  private float mSaveFromDegree;
  private float mSaveToDegree;
  private float mToDegree;
  private int type;
  
  public Rotate3d(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.mFromDegree = paramFloat1;
    this.mToDegree = paramFloat2;
    this.mCenterX = paramFloat3;
    this.mCenterY = paramFloat4;
    this.mSaveFromDegree = paramFloat1;
    this.mSaveToDegree = paramFloat2;
    this.type = 1;
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = this.mFromDegree + paramFloat * (this.mToDegree - this.mFromDegree);
    float f2 = this.mCenterX;
    float f3 = this.mCenterY;
    Matrix localMatrix = paramTransformation.getMatrix();
    if (f1 <= -76.0F)
    {
      this.mCamera.save();
      rotate(-90.0F);
      this.mCamera.getMatrix(localMatrix);
      this.mCamera.restore();
    }
    for (;;)
    {
      localMatrix.preTranslate(-f2, -f3);
      localMatrix.postTranslate(f2, f3);
      return;
      if (f1 >= 76.0F)
      {
        this.mCamera.save();
        rotate(90.0F);
        this.mCamera.getMatrix(localMatrix);
        this.mCamera.restore();
      }
      else
      {
        this.mCamera.save();
        this.mCamera.translate(0.0F, 0.0F, f2);
        rotate(f1);
        this.mCamera.translate(0.0F, 0.0F, -f2);
        this.mCamera.getMatrix(localMatrix);
        this.mCamera.restore();
      }
    }
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    this.mCamera = new Camera();
  }
  
  public void reverseTransformation(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mFromDegree = (-this.mSaveFromDegree);
      this.mToDegree = (-this.mSaveToDegree);
      return;
    }
    this.mFromDegree = this.mSaveFromDegree;
    this.mToDegree = this.mSaveToDegree;
  }
  
  public void rotate(float paramFloat)
  {
    switch (this.type)
    {
    default: 
      return;
    case 0: 
      this.mCamera.rotateX(paramFloat);
      return;
    case 1: 
      this.mCamera.rotateY(paramFloat);
      return;
    case 2: 
      this.mCamera.rotateZ(paramFloat);
      return;
    case 3: 
      this.mCamera.rotateX(paramFloat);
      this.mCamera.rotateY(paramFloat);
      return;
    case 4: 
      this.mCamera.rotateX(paramFloat);
      this.mCamera.rotateZ(paramFloat);
      return;
    case 5: 
      this.mCamera.rotateY(paramFloat);
      this.mCamera.rotateZ(paramFloat);
      return;
    }
    this.mCamera.rotateX(paramFloat);
    this.mCamera.rotateY(paramFloat);
    this.mCamera.rotateZ(paramFloat);
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.animation.Rotate3d
 * JD-Core Version:    0.7.0.1
 */