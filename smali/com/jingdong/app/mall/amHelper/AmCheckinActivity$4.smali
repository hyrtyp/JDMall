.class Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;
.super Ljava/lang/Object;
.source "AmCheckinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;->val$token:Ljava/lang/String;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    const-class v2, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "token"

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;->val$token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 291
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->finish()V

    .line 292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 294
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$4;->val$token:Ljava/lang/String;

    goto :goto_0
.end method
