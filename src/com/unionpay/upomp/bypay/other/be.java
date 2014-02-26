package com.unionpay.upomp.bypay.other;

class be
  extends di
{
  private static final byte[] b;
  private static final byte[] jdField_c_of_type_ArrayOfByte;
  int a;
  public final boolean a;
  public final boolean b;
  private int jdField_c_of_type_Int;
  public final boolean c;
  private final byte[] jdField_d_of_type_ArrayOfByte;
  private final byte[] e;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      jdField_d_of_type_Boolean = bool;
      jdField_b_of_type_ArrayOfByte = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      jdField_c_of_type_ArrayOfByte = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }
  
  public be(int paramInt, byte[] paramArrayOfByte)
  {
    this.jdField_a_of_type_ArrayOfByte = paramArrayOfByte;
    boolean bool2;
    boolean bool3;
    label35:
    label47:
    byte[] arrayOfByte;
    if ((paramInt & 0x1) == 0)
    {
      bool2 = bool1;
      this.jdField_a_of_type_Boolean = bool2;
      if ((paramInt & 0x2) != 0) {
        break label106;
      }
      bool3 = bool1;
      this.jdField_b_of_type_Boolean = bool3;
      if ((paramInt & 0x4) == 0) {
        break label112;
      }
      this.jdField_c_of_type_Boolean = bool1;
      if ((paramInt & 0x8) != 0) {
        break label117;
      }
      arrayOfByte = jdField_b_of_type_ArrayOfByte;
      label64:
      this.e = arrayOfByte;
      this.jdField_d_of_type_ArrayOfByte = new byte[2];
      this.jdField_a_of_type_Int = 0;
      if (!this.jdField_b_of_type_Boolean) {
        break label125;
      }
    }
    label106:
    label112:
    label117:
    label125:
    for (int i = 19;; i = -1)
    {
      this.jdField_c_of_type_Int = i;
      return;
      bool2 = false;
      break;
      bool3 = false;
      break label35;
      bool1 = false;
      break label47;
      arrayOfByte = jdField_c_of_type_ArrayOfByte;
      break label64;
    }
  }
  
  public boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte1 = this.e;
    byte[] arrayOfByte2 = this.jdField_a_of_type_ArrayOfByte;
    int i = this.jdField_c_of_type_Int;
    int j = paramInt2 + paramInt1;
    int k = -1;
    int n;
    label59:
    int i1;
    int i33;
    switch (this.jdField_a_of_type_Int)
    {
    default: 
      n = paramInt1;
      i1 = 0;
      if (k != -1)
      {
        arrayOfByte2[0] = arrayOfByte1[(0x3F & k >> 18)];
        arrayOfByte2[1] = arrayOfByte1[(0x3F & k >> 12)];
        arrayOfByte2[2] = arrayOfByte1[(0x3F & k >> 6)];
        i1 = 4;
        arrayOfByte2[3] = arrayOfByte1[(k & 0x3F)];
        i--;
        if (i == 0)
        {
          if (!this.jdField_c_of_type_Boolean) {
            break label1248;
          }
          i33 = 5;
          arrayOfByte2[i1] = 13;
        }
      }
      break;
    }
    for (;;)
    {
      int i34 = i33 + 1;
      arrayOfByte2[i33] = 10;
      int i2 = 19;
      int i3 = i34;
      for (;;)
      {
        int i27;
        int i25;
        int i26;
        label228:
        int i30;
        if (n + 3 > j)
        {
          if (!paramBoolean) {
            break label1074;
          }
          if (n - this.jdField_a_of_type_Int != j - 1) {
            break label725;
          }
          if (this.jdField_a_of_type_Int <= 0) {
            break label703;
          }
          byte[] arrayOfByte8 = this.jdField_d_of_type_ArrayOfByte;
          i27 = 1;
          i25 = arrayOfByte8[0];
          i26 = n;
          int i28 = (i25 & 0xFF) << 4;
          this.jdField_a_of_type_Int -= i27;
          int i29 = i3 + 1;
          arrayOfByte2[i3] = arrayOfByte1[(0x3F & i28 >> 6)];
          i30 = i29 + 1;
          arrayOfByte2[i29] = arrayOfByte1[(i28 & 0x3F)];
          if (this.jdField_a_of_type_Boolean)
          {
            int i32 = i30 + 1;
            arrayOfByte2[i30] = 61;
            i30 = i32 + 1;
            arrayOfByte2[i32] = 61;
          }
          if (!this.jdField_b_of_type_Boolean) {
            break label1219;
          }
          if (this.jdField_c_of_type_Boolean)
          {
            int i31 = i30 + 1;
            arrayOfByte2[i30] = 13;
            i30 = i31;
          }
          i3 = i30 + 1;
          arrayOfByte2[i30] = 10;
          n = i26;
          label371:
          if ((jdField_d_of_type_Boolean) || (this.jdField_a_of_type_Int == 0)) {
            break label1053;
          }
          throw new AssertionError();
          n = paramInt1;
          break label59;
          if (paramInt1 + 2 > j) {
            break;
          }
          int i35 = (0xFF & this.jdField_d_of_type_ArrayOfByte[0]) << 16;
          int i36 = paramInt1 + 1;
          int i37 = i35 | (0xFF & paramArrayOfByte[paramInt1]) << 8;
          int i38 = i36 + 1;
          k = i37 | 0xFF & paramArrayOfByte[i36];
          this.jdField_a_of_type_Int = 0;
          n = i38;
          break label59;
          if (paramInt1 + 1 > j) {
            break;
          }
          int m = (0xFF & this.jdField_d_of_type_ArrayOfByte[0]) << 16 | (0xFF & this.jdField_d_of_type_ArrayOfByte[1]) << 8;
          n = paramInt1 + 1;
          k = m | 0xFF & paramArrayOfByte[paramInt1];
          this.jdField_a_of_type_Int = 0;
          break label59;
        }
        int i4 = (0xFF & paramArrayOfByte[n]) << 16 | (0xFF & paramArrayOfByte[(n + 1)]) << 8 | 0xFF & paramArrayOfByte[(n + 2)];
        arrayOfByte2[i3] = arrayOfByte1[(0x3F & i4 >> 18)];
        arrayOfByte2[(i3 + 1)] = arrayOfByte1[(0x3F & i4 >> 12)];
        arrayOfByte2[(i3 + 2)] = arrayOfByte1[(0x3F & i4 >> 6)];
        arrayOfByte2[(i3 + 3)] = arrayOfByte1[(i4 & 0x3F)];
        n += 3;
        i1 = i3 + 4;
        i = i2 - 1;
        if (i == 0)
        {
          int i5;
          if (this.jdField_c_of_type_Boolean)
          {
            i5 = i1 + 1;
            arrayOfByte2[i1] = 13;
          }
          for (;;)
          {
            int i6 = i5 + 1;
            arrayOfByte2[i5] = 10;
            i2 = 19;
            i3 = i6;
            break;
            label703:
            int i24 = n + 1;
            i25 = paramArrayOfByte[n];
            i26 = i24;
            i27 = 0;
            break label228;
            label725:
            int i13;
            int i12;
            label762:
            int i16;
            label803:
            int i20;
            int i21;
            if (n - this.jdField_a_of_type_Int == j - 2) {
              if (this.jdField_a_of_type_Int > 1)
              {
                byte[] arrayOfByte7 = this.jdField_d_of_type_ArrayOfByte;
                i13 = 1;
                i12 = arrayOfByte7[0];
                int i14 = (i12 & 0xFF) << 10;
                if (this.jdField_a_of_type_Int <= 0) {
                  break label979;
                }
                byte[] arrayOfByte6 = this.jdField_d_of_type_ArrayOfByte;
                int i23 = i13 + 1;
                i16 = arrayOfByte6[i13];
                i13 = i23;
                int i17 = i14 | (i16 & 0xFF) << 2;
                this.jdField_a_of_type_Int -= i13;
                int i18 = i3 + 1;
                arrayOfByte2[i3] = arrayOfByte1[(0x3F & i17 >> 12)];
                int i19 = i18 + 1;
                arrayOfByte2[i18] = arrayOfByte1[(0x3F & i17 >> 6)];
                i20 = i19 + 1;
                arrayOfByte2[i19] = arrayOfByte1[(i17 & 0x3F)];
                if (!this.jdField_a_of_type_Boolean) {
                  break label1212;
                }
                i21 = i20 + 1;
                arrayOfByte2[i20] = 61;
              }
            }
            for (;;)
            {
              if (this.jdField_b_of_type_Boolean)
              {
                if (this.jdField_c_of_type_Boolean)
                {
                  int i22 = i21 + 1;
                  arrayOfByte2[i21] = 13;
                  i21 = i22;
                }
                i3 = i21 + 1;
                arrayOfByte2[i21] = 10;
                break;
                int i11 = n + 1;
                i12 = paramArrayOfByte[n];
                n = i11;
                i13 = 0;
                break label762;
                label979:
                int i15 = n + 1;
                i16 = paramArrayOfByte[n];
                n = i15;
                break label803;
                if ((!this.jdField_b_of_type_Boolean) || (i3 <= 0) || (i2 == 19)) {
                  break;
                }
                int i10;
                if (this.jdField_c_of_type_Boolean)
                {
                  i10 = i3 + 1;
                  arrayOfByte2[i3] = 13;
                }
                for (;;)
                {
                  i3 = i10 + 1;
                  arrayOfByte2[i10] = 10;
                  break;
                  label1053:
                  if ((!jdField_d_of_type_Boolean) && (n != j))
                  {
                    throw new AssertionError();
                    label1074:
                    if (n != j - 1) {
                      break label1126;
                    }
                    byte[] arrayOfByte5 = this.jdField_d_of_type_ArrayOfByte;
                    int i9 = this.jdField_a_of_type_Int;
                    this.jdField_a_of_type_Int = (i9 + 1);
                    arrayOfByte5[i9] = paramArrayOfByte[n];
                  }
                  for (;;)
                  {
                    this.jdField_b_of_type_Int = i3;
                    this.jdField_c_of_type_Int = i2;
                    return true;
                    label1126:
                    if (n == j - 2)
                    {
                      byte[] arrayOfByte3 = this.jdField_d_of_type_ArrayOfByte;
                      int i7 = this.jdField_a_of_type_Int;
                      this.jdField_a_of_type_Int = (i7 + 1);
                      arrayOfByte3[i7] = paramArrayOfByte[n];
                      byte[] arrayOfByte4 = this.jdField_d_of_type_ArrayOfByte;
                      int i8 = this.jdField_a_of_type_Int;
                      this.jdField_a_of_type_Int = (i8 + 1);
                      arrayOfByte4[i8] = paramArrayOfByte[(n + 1)];
                    }
                  }
                  i10 = i3;
                }
              }
              i3 = i21;
              break;
              label1212:
              i21 = i20;
            }
            label1219:
            n = i26;
            i3 = i30;
            break label371;
            i5 = i1;
          }
        }
        i2 = i;
        i3 = i1;
      }
      label1248:
      i33 = i1;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.be
 * JD-Core Version:    0.7.0.1
 */