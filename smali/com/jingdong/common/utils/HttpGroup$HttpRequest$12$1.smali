.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;->this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 777
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;->this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;

    const-string v2, "\u73b0\u5728\u662f\u5426\u91cd\u8bd5\uff1f"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->setMessage(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;->this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;

    const-string v2, "\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;->this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;->this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 783
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://app.jd.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 784
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 785
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12$1;->this$2:Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$12;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1, v0}, Lcom/jingdong/common/frame/IMyActivity;->startActivityNoException(Landroid/content/Intent;)V

    .line 786
    return-void
.end method
