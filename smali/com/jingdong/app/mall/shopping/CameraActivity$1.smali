.class Lcom/jingdong/app/mall/shopping/CameraActivity$1;
.super Landroid/os/Handler;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    .line 129
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CameraActivity$1;)Lcom/jingdong/app/mall/shopping/CameraActivity;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 131
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v8, :cond_1

    .line 132
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBanner:Landroid/view/View;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$0(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/view/View;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 134
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$1(Lcom/jingdong/app/mall/shopping/CameraActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 136
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBlock:Z
    invoke-static {v6, v8}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$2(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V

    .line 138
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 142
    .local v3, colorValue:Ljava/lang/String;
    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 143
    .local v4, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v4, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 144
    invoke-virtual {v4, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 145
    const-string v6, "colorSearchNew"

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 146
    const-string v6, "colorKey"

    invoke-virtual {v4, v6, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v6, "productNum"

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->productCount:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$3(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v6, "networkType"

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CameraActivity;->getNetType()Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$4(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v6, "cateMsg"

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mCategories:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$5(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v4, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAttempts(I)V

    .line 151
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->host:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$6(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setHost(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v4, v9}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 153
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->networkConnectFailedNotifyUser:Z
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$7(Lcom/jingdong/app/mall/shopping/CameraActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    invoke-virtual {v4, v8}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 155
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAlertErrorDialogType(I)V

    .line 156
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->networkConnectFailedNotifyUser:Z
    invoke-static {v6, v9}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$8(Lcom/jingdong/app/mall/shopping/CameraActivity;Z)V

    .line 158
    :cond_2
    const/16 v6, 0x1388

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setConnectTimeout(I)V

    .line 159
    new-instance v6, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;

    invoke-direct {v6, p0, v3}, Lcom/jingdong/app/mall/shopping/CameraActivity$1$1;-><init>(Lcom/jingdong/app/mall/shopping/CameraActivity$1;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 204
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto/16 :goto_0

    .line 205
    .end local v3           #colorValue:Ljava/lang/String;
    .end local v4           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_3
    iget v6, p1, Landroid/os/Message;->what:I

    if-nez v6, :cond_5

    .line 206
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, b:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 209
    .local v2, colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 210
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 211
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorProductModel:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$15(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/jingdong/common/entity/JDColorProductModel;

    move-object v2, v0

    .line 212
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 213
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorProductModel:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$15(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$16(Lcom/jingdong/app/mall/shopping/CameraActivity;)[Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mIndex:I
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$17(Lcom/jingdong/app/mall/shopping/CameraActivity;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/JDColorProductModel;

    .line 216
    .local v5, t:Lcom/jingdong/common/entity/JDColorProductModel;
    if-eqz v5, :cond_4

    .line 218
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowIds:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$18(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jingdong/common/entity/JDColorProductModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 220
    :cond_4
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$16(Lcom/jingdong/app/mall/shopping/CameraActivity;)[Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mIndex:I
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$17(Lcom/jingdong/app/mall/shopping/CameraActivity;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$16(Lcom/jingdong/app/mall/shopping/CameraActivity;)[Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mIndex:I
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$17(Lcom/jingdong/app/mall/shopping/CameraActivity;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 222
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mIndex:I
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$17(Lcom/jingdong/app/mall/shopping/CameraActivity;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v7, v7, 0x6

    #setter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mIndex:I
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$19(Lcom/jingdong/app/mall/shopping/CameraActivity;I)V

    .line 223
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$20(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 209
    .end local v5           #t:Lcom/jingdong/common/entity/JDColorProductModel;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 226
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;
    :cond_5
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_6

    .line 227
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$21(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorClose:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$22(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 228
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$21(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorClose:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$22(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 231
    :cond_6
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    .line 232
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CameraActivity;->wakeLockRelease()V
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$23(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    goto/16 :goto_0
.end method
