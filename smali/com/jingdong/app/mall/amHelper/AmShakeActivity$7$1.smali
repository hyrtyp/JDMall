.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7$1;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->onShake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$7;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->mIsCanShake:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$9(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Z)V

    .line 162
    return-void
.end method
