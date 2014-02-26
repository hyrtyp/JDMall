.class Lcom/jingdong/app/mall/shopping/GiftSelectDialog$2;
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

.field private final synthetic val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;Lcom/jingdong/common/utils/MySimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$2;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$2;->val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$2;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$3(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$2;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$3(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$2;->val$adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    return-void
.end method
