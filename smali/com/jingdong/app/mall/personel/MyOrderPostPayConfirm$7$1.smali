.class Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;
.super Ljava/lang/Object;
.source "MyOrderPostPayConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;

.field private final synthetic val$submitInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;->val$submitInfo:Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;->val$submitInfo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v0

    const-string v1, "post_order_confrim_flag"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 273
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->finish()V

    .line 274
    return-void
.end method
