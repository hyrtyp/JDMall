.class Lcom/jingdong/app/mall/MainFrameActivity$6$1;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity$6;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/MainFrameActivity$6;

.field private final synthetic val$dir1:Lcom/jingdong/common/utils/FileService$Directory;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity$6;Lcom/jingdong/common/utils/FileService$Directory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$6$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/MainFrameActivity$6$1;->val$dir1:Lcom/jingdong/common/utils/FileService$Directory;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    const/4 v7, 0x0

    .line 653
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v6

    invoke-static {v6, v7, v7}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 654
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 655
    .local v2, data:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 656
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    if-eqz v1, :cond_0

    .line 657
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 658
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 659
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 662
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/MainFrameActivity$6$1;->val$dir1:Lcom/jingdong/common/utils/FileService$Directory;

    const-string v7, "startimage.image"

    invoke-static {v6, v7, v2}, Lcom/jingdong/common/utils/FileService;->saveToSDCard(Lcom/jingdong/common/utils/FileService$Directory;Ljava/lang/String;[B)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 665
    .local v5, saveSuccess:Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 669
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 670
    .local v3, defaultPreference:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 677
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "imageurl"

    iget-object v7, p0, Lcom/jingdong/app/mall/MainFrameActivity$6$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$6;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/MainFrameActivity$6;->access$0(Lcom/jingdong/app/mall/MainFrameActivity$6;)Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity;->mStartImageUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/MainFrameActivity;->access$7(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 678
    const-string v6, "imagepath"

    iget-object v7, p0, Lcom/jingdong/app/mall/MainFrameActivity$6$1;->val$dir1:Lcom/jingdong/common/utils/FileService$Directory;

    invoke-virtual {v7}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    const-string v6, "beginTime"

    iget-object v7, p0, Lcom/jingdong/app/mall/MainFrameActivity$6$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$6;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/MainFrameActivity$6;->access$0(Lcom/jingdong/app/mall/MainFrameActivity$6;)Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity;->mStartTime:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/MainFrameActivity;->access$8(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 680
    const-string v6, "endTime"

    iget-object v7, p0, Lcom/jingdong/app/mall/MainFrameActivity$6$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$6;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity$6;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/MainFrameActivity$6;->access$0(Lcom/jingdong/app/mall/MainFrameActivity$6;)Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v7

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity;->mEndTime:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/MainFrameActivity;->access$9(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 681
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 693
    .end local v3           #defaultPreference:Landroid/content/SharedPreferences;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 697
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 701
    return-void
.end method
