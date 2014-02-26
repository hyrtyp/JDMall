.class Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/FeedbackActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/FeedbackActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$2;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;)Lcom/jingdong/app/mall/more/FeedbackActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$2;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$2;)Lcom/jingdong/app/mall/more/FeedbackActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07026d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 123
    const v1, 0x7f07037c

    new-instance v2, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$1;-><init>(Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$2;)Lcom/jingdong/app/mall/more/FeedbackActivity;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$2;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$2;-><init>(Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/FeedbackActivity;->post(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 147
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$2;)Lcom/jingdong/app/mall/more/FeedbackActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0702ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 149
    const v1, 0x7f07037c

    new-instance v2, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$3;-><init>(Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v1, p0, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/FeedbackActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/FeedbackActivity$2;->this$0:Lcom/jingdong/app/mall/more/FeedbackActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/FeedbackActivity$2;->access$0(Lcom/jingdong/app/mall/more/FeedbackActivity$2;)Lcom/jingdong/app/mall/more/FeedbackActivity;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$4;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/more/FeedbackActivity$2$1$4;-><init>(Lcom/jingdong/app/mall/more/FeedbackActivity$2$1;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/FeedbackActivity;->post(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 170
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
