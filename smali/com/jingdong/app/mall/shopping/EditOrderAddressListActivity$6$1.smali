.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6$1;
.super Ljava/lang/Object;
.source "EditOrderAddressListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6$1;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6$1;->val$msg:Ljava/lang/String;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6$1;->this$1:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;->access$0(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6;)Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$6$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    return-void
.end method
