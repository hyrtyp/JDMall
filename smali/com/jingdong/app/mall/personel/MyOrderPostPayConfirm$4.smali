.class Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;
.super Ljava/lang/Object;
.source "MyOrderPostPayConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

.field private final synthetic val$cityItems:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;->val$cityItems:[Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0702b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 138
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;->val$cityItems:[Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->cityIndex:I
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$9(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I

    move-result v2

    new-instance v3, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4$1;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;->val$cityItems:[Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$4;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    return-void
.end method
