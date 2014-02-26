.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;->val$message:Ljava/lang/String;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;->val$message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v2

    const v3, 0x7f0703c5

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderCancelButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mCancelTimestamp:J

    .line 1078
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12$2;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$12;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1084
    return-void

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
