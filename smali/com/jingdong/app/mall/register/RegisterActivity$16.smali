.class Lcom/jingdong/app/mall/register/RegisterActivity$16;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

.field private final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$16;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$16;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$16;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 785
    return-void
.end method
