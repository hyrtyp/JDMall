.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$10;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->querryShakeData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

.field private final synthetic val$httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$10;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$10;->val$httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$10;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$10;->val$httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 347
    return-void
.end method
