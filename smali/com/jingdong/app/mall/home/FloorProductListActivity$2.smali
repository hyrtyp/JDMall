.class Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
.super Ljava/lang/Object;
.source "FloorProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity;->handleBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    const/4 v3, 0x1

    #setter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->isInitializedBanner:Z
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$2(Lcom/jingdong/app/mall/home/FloorProductListActivity;Z)V

    .line 197
    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mActivityIntro:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$3(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mTextViewFloorBannerIntro:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$4(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mActivityIntro:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$3(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBannerUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$5(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 205
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 206
    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBannerUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$5(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)V

    .line 257
    .local v1, listener:Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 258
    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 260
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v1           #listener:Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;
    :cond_1
    return-void
.end method
