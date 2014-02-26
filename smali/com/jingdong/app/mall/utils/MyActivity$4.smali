.class Lcom/jingdong/app/mall/utils/MyActivity$4;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/MyActivity;->catchToastTip(Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$toastMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/MyActivity$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/MyActivity$4;->val$toastMsg:Ljava/lang/String;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/MyActivity$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/MyActivity$4;->val$toastMsg:Ljava/lang/String;

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 615
    return-void
.end method
