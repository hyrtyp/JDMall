.class Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$1;
.super Ljava/lang/Object;
.source "AmCheckinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->access$0(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;)Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    move-result-object v0

    const v1, 0x7f07055c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;->access$0(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$3;)Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->access$3(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)Lcom/jingdong/app/mall/shake/ShakeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shake/ShakeListener;->start()V

    .line 209
    return-void
.end method
