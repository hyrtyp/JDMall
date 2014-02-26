.class Lcom/jingdong/app/mall/shake/ShakeActivity$7;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$7;)Lcom/jingdong/app/mall/shake/ShakeActivity;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    return-object v0
.end method


# virtual methods
.method public onShake()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mIsCanShake:Z
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$23(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$21(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mIsCanShake:Z
    invoke-static {v3, v6}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$24(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 203
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    new-instance v4, Lcom/jingdong/app/mall/shake/ShakeActivity$7$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$7$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity$7;)V

    .line 209
    const/16 v5, 0x834

    .line 203
    invoke-virtual {v3, v4, v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 212
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimeSuccess:Z
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$25(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startVibrato()V

    .line 215
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V
    invoke-static {v3, v6}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$26(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 217
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$7(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;
    invoke-static {v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$27(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->loadShakeTimes(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$28(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$9(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->standardDate:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$29(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$14(Lcom/jingdong/app/mall/shake/ShakeActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 227
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$9(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->stopShakeListener()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$11(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 232
    invoke-static {}, Lcom/jingdong/common/utils/ShakeUtils;->loadShakeTimesFromSD()[Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, shake:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v7, :cond_0

    .line 234
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$30(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$31(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->standardDate:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$29(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, currentDate:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$27(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 246
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mCurrentShakeTimes:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$27(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/jingdong/common/utils/MathsUtils;->parseInt(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$6(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 250
    :cond_4
    sget-boolean v3, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponed:Z

    if-eqz v3, :cond_5

    .line 251
    sput-boolean v6, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->isReceiveCouponed:Z

    .line 252
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iput-boolean v6, v3, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    .line 255
    :cond_5
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$7(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-boolean v3, v3, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    if-eqz v3, :cond_6

    .line 257
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->showShakeToast()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$32(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    goto/16 :goto_0

    .line 260
    :cond_6
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->closeShakeDialog()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$33(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 263
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$7(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 265
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$5(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v3

    if-gtz v3, :cond_7

    .line 266
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-boolean v3, v3, Lcom/jingdong/app/mall/shake/ShakeActivity;->isHintUser:Z

    if-nez v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startVibrato()V

    .line 269
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeSound(I)V
    invoke-static {v3, v6}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$26(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 270
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->showNoShakeTimesToast()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$34(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    goto/16 :goto_0

    .line 274
    :cond_7
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$5(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$35(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v4

    if-le v3, v4, :cond_8

    .line 275
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$35(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$6(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 277
    :cond_8
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startToShake()V

    goto/16 :goto_0

    .line 280
    :cond_9
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mMaxIntShakeTime:I
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$35(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v4

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$6(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$5(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, comment:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->saveStringToCache(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 283
    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startToShake()V

    goto/16 :goto_0
.end method
