.class Lcom/jingdong/app/mall/more/SettingActivity$2$1$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SettingActivity$2$1;->onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$3;->this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$3;->this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)Lcom/jingdong/app/mall/more/SettingActivity$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/more/SettingActivity;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$6(Lcom/jingdong/app/mall/more/SettingActivity;)V

    .line 215
    return-void
.end method
