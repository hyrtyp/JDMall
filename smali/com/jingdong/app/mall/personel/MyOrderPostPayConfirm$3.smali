.class Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;
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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 116
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$5(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mYear:I
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$6(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mMonth:I
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$7(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I

    move-result v4

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDay:I
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$8(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 118
    return-void
.end method
