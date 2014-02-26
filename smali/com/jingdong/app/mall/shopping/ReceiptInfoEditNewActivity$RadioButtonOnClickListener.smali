.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioButtonOnClickListener"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput p2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->id:I

    .line 633
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 637
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->id:I

    packed-switch v0, :pswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 639
    :pswitch_0
    if-eqz p2, :cond_0

    .line 640
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    const/16 v1, 0x8

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showCompanyTextView(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$0(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V

    .line 641
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput-boolean v2, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bPersonel:Z

    goto :goto_0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput-boolean v2, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bPersonel:Z

    goto :goto_0

    .line 647
    :pswitch_1
    if-eqz p2, :cond_1

    .line 648
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showCompanyTextView(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$0(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;I)V

    .line 649
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput-boolean v2, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bCompany:Z

    goto :goto_0

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$RadioButtonOnClickListener;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput-boolean v1, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bCompany:Z

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
