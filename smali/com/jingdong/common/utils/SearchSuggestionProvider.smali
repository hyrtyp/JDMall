.class public Lcom/jingdong/common/utils/SearchSuggestionProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SearchSuggestionProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.jd.app.trade.utils.SearchSuggestionProvider"

.field static final MODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 48
    const-string v0, "com.jd.app.trade.utils.SearchSuggestionProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/common/utils/SearchSuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 49
    return-void
.end method
