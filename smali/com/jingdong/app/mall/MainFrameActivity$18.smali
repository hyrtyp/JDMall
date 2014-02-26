.class Lcom/jingdong/app/mall/MainFrameActivity$18;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->initPushMsgAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$18;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/MainFrameActivity$18;)Lcom/jingdong/app/mall/MainFrameActivity;
    .locals 1
    .parameter

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity$18;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1510
    new-instance v0, Lcom/jingdong/app/mall/MainFrameActivity$18$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/MainFrameActivity$18$1;-><init>(Lcom/jingdong/app/mall/MainFrameActivity$18;)V

    invoke-static {v0, v1, v1}, Lcom/jingdong/common/utils/PushMessageUtils;->regPushMessageToken(Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)V

    .line 1525
    return-void
.end method
