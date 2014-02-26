.class Lcom/jingdong/app/mall/signin/SignActivity$3;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "SignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/signin/SignActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$3;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 157
    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$3;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->drawer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$6(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/signin/SignListView;

    iget-object v0, v0, Lcom/jingdong/app/mall/signin/SignListView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$3;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->drawer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$6(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/signin/SignListView;

    iget-object v0, v0, Lcom/jingdong/app/mall/signin/SignListView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$3;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->drawerIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$7(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 170
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3
    .parameter "drawerView"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$3;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->drawer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$6(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/signin/SignListView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/signin/SignListView;->showUserData()V

    .line 179
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$3;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->drawer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$6(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/signin/SignListView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/signin/SignListView;->postHttp()V

    .line 181
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$3;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->drawerIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/signin/SignActivity;->access$7(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 183
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/SignActivity$3;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;

    const-string v1, "SignDrawerOpened"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method
