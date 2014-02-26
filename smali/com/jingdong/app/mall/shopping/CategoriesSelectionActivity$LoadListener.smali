.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;
.super Ljava/lang/Object;
.source "CategoriesSelectionActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    return-object v0
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$2;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->post(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    const/4 v7, 0x0

    .line 292
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "category"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    .line 293
    .local v3, jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->showError()V

    .line 332
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    invoke-virtual {v6, v3}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->getCategoryList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$0(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Ljava/util/ArrayList;)V

    .line 301
    new-instance v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    invoke-direct {v1, v5}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V

    .line 302
    .local v1, categorySelecte:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    const v6, 0x7f0704da

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->doc:Ljava/lang/String;

    .line 303
    iput v7, v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->cateLevel:I

    .line 304
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->cateNum:J

    .line 305
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 307
    const/4 v2, 0x0

    .line 310
    .local v2, hasOldData:Z
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 317
    :goto_1
    if-nez v2, :cond_3

    .line 318
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->catsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$1(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 323
    :cond_3
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    new-instance v6, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener$1;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 310
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 311
    .local v4, temp:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 312
    const/4 v2, 0x1

    .line 313
    goto :goto_1

    .line 318
    .end local v4           #temp:Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    .line 319
    .local v0, category:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$LoadListener;->showError()V

    .line 337
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 341
    return-void
.end method
