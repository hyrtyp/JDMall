.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addEditView(Landroid/view/View;ILcom/jingdong/common/utils/JSONObjectProxy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

.field private final synthetic val$index:I

.field private final synthetic val$tp:Lcom/jingdong/common/utils/JSONObjectProxy;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;ILcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->val$index:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->val$tp:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    .locals 1
    .parameter

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1135
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    const-string v1, "\u5220\u9664\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1136
    const-string v1, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u8fd9\u4e2a\u4f18\u60e0\u5957\u88c5\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1137
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    iget v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->val$index:I

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->val$tp:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v2, p0, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;ILcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1184
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$2;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1193
    const/4 v0, 0x0

    .line 1194
    return-void
.end method
