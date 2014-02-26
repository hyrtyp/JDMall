.class Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;
.super Ljava/lang/Object;
.source "YanBaoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/YanBaoActivity;->setEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 191
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    const-class v3, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "yan_bao"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelected:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$0(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 200
    const-string v2, "yan_bao_select"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$1(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 201
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 202
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->finish()V

    .line 204
    return-void
.end method
