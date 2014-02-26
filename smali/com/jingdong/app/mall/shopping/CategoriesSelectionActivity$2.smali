.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$2;
.super Ljava/lang/Object;
.source "CategoriesSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 204
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->isClickable:Z
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$9(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v1, selectedCategories:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, result:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "color_buy_selected_categories"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->finishWithResultOK(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$12(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    .local v2, str:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
