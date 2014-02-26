.class Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$2;
.super Ljava/lang/Object;
.source "AmCheckinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->stopShakeListener()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->access$1(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V

    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JDAnnualMeeting"

    const-string v2, "checkedIn_Tap"

    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getShakeParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$2;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->doCheckin()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->access$2(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V

    .line 126
    return-void
.end method
