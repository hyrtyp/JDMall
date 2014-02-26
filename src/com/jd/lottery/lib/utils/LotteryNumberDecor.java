package com.jd.lottery.lib.utils;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import com.jd.lottery.lib.config.Config;

public class LotteryNumberDecor
{
  private static final char TEXT_SEPRATOR = '|';
  
  public static CharSequence decorLotteryNumber(CharSequence paramCharSequence)
  {
    int[] arrayOfInt = Config.TEXT_COLOR;
    SpannableString localSpannableString = new SpannableString(paramCharSequence);
    String str = paramCharSequence.toString();
    int i = 0;
    int j = 0;
    for (;;)
    {
      if (j >= localSpannableString.length()) {
        return localSpannableString;
      }
      int k = str.indexOf('|', j + 1);
      if (k < 0) {
        k = localSpannableString.length();
      }
      localSpannableString.setSpan(new ForegroundColorSpan(arrayOfInt[i]), j, k, 33);
      j = k;
      i++;
      if (i >= arrayOfInt.length) {
        i = 0;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.LotteryNumberDecor
 * JD-Core Version:    0.7.0.1
 */