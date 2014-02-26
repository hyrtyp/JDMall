.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$4;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startShakeListener()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$4(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 814
    return-void
.end method
