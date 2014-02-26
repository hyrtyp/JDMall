.class Lcom/jingdong/app/lib/base/activity/JDActivity$2;
.super Ljava/lang/Object;
.source "JDActivity.java"

# interfaces
.implements Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/lib/base/activity/JDActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/lib/base/activity/JDActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/lib/base/activity/JDActivity$2;)Lcom/jingdong/app/lib/base/activity/JDActivity;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    return-object v0
.end method


# virtual methods
.method public onLoadSpecialUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/lib/base/activity/JDActivity$2$1;-><init>(Lcom/jingdong/app/lib/base/activity/JDActivity$2;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$2;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    iget-object v1, v1, Lcom/jingdong/app/lib/base/activity/JDActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 117
    const/4 v1, 0x0

    return v1
.end method
