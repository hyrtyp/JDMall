.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

.field private final synthetic val$thePosition:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

    iput p2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->val$thePosition:I

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;
    .locals 1
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 398
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070380

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 400
    const v1, 0x7f07037c

    new-instance v2, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;

    iget v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->val$thePosition:I

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    const v1, 0x7f0701a1

    new-instance v2, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$2;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 418
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$3;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$3;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->post(Ljava/lang/Runnable;)V

    .line 426
    return-void
.end method
