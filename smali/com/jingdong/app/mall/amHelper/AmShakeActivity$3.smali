.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    .locals 1
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->showShakeResult()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$2(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 793
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->cancelVibrator()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$3(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 796
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    new-instance v1, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$3;)V

    .line 803
    const/16 v2, 0x3e8

    .line 796
    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 804
    return-void
.end method
