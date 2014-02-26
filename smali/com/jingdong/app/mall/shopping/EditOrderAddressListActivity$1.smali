.class Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$1;
.super Ljava/lang/Object;
.source "EditOrderAddressListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "PageType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;

    invoke-virtual {v1, v0, v3}, Lcom/jingdong/app/mall/shopping/EditOrderAddressListActivity;->startActivityForResultNoException(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method
