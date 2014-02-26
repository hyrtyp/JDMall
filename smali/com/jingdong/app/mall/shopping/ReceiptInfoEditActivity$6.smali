.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$6;
.super Ljava/lang/Object;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 249
    if-eqz p2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyEdt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bCompany:Z

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iput-boolean v1, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bCompany:Z

    goto :goto_0
.end method
