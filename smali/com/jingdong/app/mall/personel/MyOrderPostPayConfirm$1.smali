.class Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$1;
.super Ljava/lang/Object;
.source "MyOrderPostPayConfirm.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mYear:I
    invoke-static {v0, p2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V

    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mMonth:I
    invoke-static {v0, p3}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$1(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V

    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->mDay:I
    invoke-static {v0, p4}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$2(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;I)V

    .line 67
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$1;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->updateDisplay()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$3(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V

    .line 68
    return-void
.end method
