.class Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$1;
.super Ljava/lang/Object;
.source "MyOrderInfoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MainFrameActivity;->removeRecordSecond()V

    .line 111
    return-void
.end method
