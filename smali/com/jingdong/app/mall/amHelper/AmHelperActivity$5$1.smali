.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$number:Ljava/lang/String;

.field private final synthetic val$subcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$subcode:Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 287
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$8(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4eac\u4e1c\u96c6\u56e22014\u5e74\u4f1a\u6b22\u8fce\u60a8\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$subcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$subcode:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->seat:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->contentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$10(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u7684\u5ea7\u4f4d\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->seat:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$0(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->urlLoc:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$1(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/jingdong/common/utils/NetUtils;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->urlLoc:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$1(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$11(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->content:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->urlLoc:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$1(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    #setter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isLoader:Z
    invoke-static {v0, v3}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$7(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Z)V

    .line 327
    :cond_1
    :goto_3
    return-void

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->val$number:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->setText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$9(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->contentTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$10(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 309
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->url:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$2(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$2(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$11(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->content:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$2(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 315
    :catch_0
    move-exception v0

    goto :goto_2

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;->access$3(Lcom/jingdong/app/mall/amHelper/AmHelperActivity$5;)Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    move-result-object v0

    const v1, 0x7f07055c

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method
