.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    return-object v0
.end method


# virtual methods
.method public onShake()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mIsCanShake:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$8(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #setter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mIsCanShake:Z
    invoke-static {v0, v3}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$9(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Z)V

    .line 157
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;)V

    .line 163
    const/16 v2, 0x834

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 165
    sget-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeIsStop:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mShakeDataIsQuerying:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$10(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startShakeListener()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$4(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->stopShakeListener()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$6(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 175
    sget-boolean v0, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->isReceiveCouponed:Z

    if-eqz v0, :cond_3

    .line 176
    sput-boolean v3, Lcom/jingdong/app/mall/amHelper/AmShakeDialogNew;->isReceiveCouponed:Z

    .line 177
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    iput-boolean v3, v0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->isHintUser:Z

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->closeShakeDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$11(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startToShake()V

    goto :goto_0
.end method
