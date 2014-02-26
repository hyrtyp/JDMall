package com.jingdong.common.utils;

import android.content.SearchRecentSuggestionsProvider;

public class SearchSuggestionProvider
  extends SearchRecentSuggestionsProvider
{
  static final String AUTHORITY = "com.jd.app.trade.utils.SearchSuggestionProvider";
  static final int MODE = 1;
  
  public SearchSuggestionProvider()
  {
    setupSuggestions("com.jd.app.trade.utils.SearchSuggestionProvider", 1);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.SearchSuggestionProvider
 * JD-Core Version:    0.7.0.1
 */