.class Lcom/jingdong/app/mall/personel/MyCollectActivity$2;
.super Ljava/lang/Object;
.source "MyCollectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCollectActivity;->handleLongClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field items:[Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCollectActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88\u5173\u6ce8"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->items:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyCollectActivity$2;)Lcom/jingdong/app/mall/personel/MyCollectActivity;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/Product;

    .line 205
    .local v1, product:Lcom/jingdong/common/entity/Product;
    if-nez v1, :cond_0

    .line 206
    const/4 v2, 0x0

    .line 242
    :goto_0
    return v2

    .line 208
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyCollectActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "\u64cd\u4f5c"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 210
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCollectActivity$2;->items:[Ljava/lang/String;

    new-instance v3, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/personel/MyCollectActivity$2$1;-><init>(Lcom/jingdong/app/mall/personel/MyCollectActivity$2;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 242
    const/4 v2, 0x1

    goto :goto_0
.end method
