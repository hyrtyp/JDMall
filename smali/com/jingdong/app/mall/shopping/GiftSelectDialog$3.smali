.class Lcom/jingdong/app/mall/shopping/GiftSelectDialog$3;
.super Ljava/lang/Object;
.source "GiftSelectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$3;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$3;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$3(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$3;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->emptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$4(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    return-void
.end method
