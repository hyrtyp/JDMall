.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$2;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$2;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9$2;->this$1:Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;->access$0(Lcom/jingdong/app/mall/amHelper/AmShakeActivity$9;)Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->hideLoadingView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$13(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 311
    return-void
.end method
