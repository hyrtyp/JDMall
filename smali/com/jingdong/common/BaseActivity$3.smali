.class Lcom/jingdong/common/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/BaseActivity;->startActivityForResultNoExceptionStatic(Landroid/app/Activity;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/BaseActivity;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$toastMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/BaseActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/BaseActivity$3;->this$0:Lcom/jingdong/common/BaseActivity;

    iput-object p2, p0, Lcom/jingdong/common/BaseActivity$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/jingdong/common/BaseActivity$3;->val$toastMsg:Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jingdong/common/BaseActivity$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/jingdong/common/BaseActivity$3;->val$toastMsg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    return-void
.end method
