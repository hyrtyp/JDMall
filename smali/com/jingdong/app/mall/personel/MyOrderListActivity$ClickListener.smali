.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;
.super Ljava/lang/Object;
.source "MyOrderListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    const-string v1, "oneMonthOrder"

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->functionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->initOneMonthorder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$1(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V

    .line 183
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->isShowTextView:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$2(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->showVisibleCustomView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$3(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->handlePreMonthOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$4(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x7f0c038d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
