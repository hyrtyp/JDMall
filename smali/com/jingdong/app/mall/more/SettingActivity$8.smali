.class Lcom/jingdong/app/mall/more/SettingActivity$8;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SettingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SettingActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$8;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$8;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->modal:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$17(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$8;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->rootFrameLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$18(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$8;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #calls: Lcom/jingdong/app/mall/more/SettingActivity;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$6(Lcom/jingdong/app/mall/more/SettingActivity;)V

    .line 541
    :cond_0
    return-void
.end method
