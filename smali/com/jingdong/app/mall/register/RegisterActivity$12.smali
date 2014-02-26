.class Lcom/jingdong/app/mall/register/RegisterActivity$12;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->loginError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$12;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$12;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$12;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const v2, 0x7f07020a

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    goto :goto_0
.end method
