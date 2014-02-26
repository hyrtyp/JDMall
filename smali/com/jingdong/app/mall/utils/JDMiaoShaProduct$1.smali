.class Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;
.super Ljava/lang/Object;
.source "JDMiaoShaProduct.java"

# interfaces
.implements Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock$CountDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bindData(Lcom/jingdong/common/entity/Product;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->val$product:Lcom/jingdong/common/entity/Product;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;J[JLandroid/text/SpannableStringBuilder;I)V
    .locals 1
    .parameter "digitalClock"
    .parameter "millisUntilFinished"
    .parameter "hms"
    .parameter "hmsToString"
    .parameter "what"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #setter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->millis:J
    invoke-static {v0, p2, p3}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$7(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;J)V

    .line 141
    return-void
.end method

.method public finish(Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;I)Z
    .locals 8
    .parameter "digitalClock"
    .parameter "what"

    .prologue
    const/4 v2, 0x1

    .line 112
    packed-switch p2, :pswitch_data_0

    .line 135
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 114
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getEndTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->timeMillis:J
    invoke-static {v6}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$0(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 115
    .local v0, endTime:J
    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jingdong/app/mall/utils/ui/CustomDigitalClock;->setEndTime(JI)V

    .line 116
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    const/4 v3, 0x2

    #calls: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setProductStyle(I)V
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$1(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;I)V

    .line 117
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    const/4 v3, 0x2

    #calls: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setButtomStyle(I)V
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$2(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;I)V

    .line 118
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bottomLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$3(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 119
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #calls: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->addButton()V
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$4(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)V

    goto :goto_0

    .line 130
    .end local v0           #endTime:J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    const/4 v4, 0x3

    #calls: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setProductStyle(I)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$1(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;I)V

    .line 124
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    const/4 v4, 0x3

    #calls: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setButtomStyle(I)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$2(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;I)V

    .line 125
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$5(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 126
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->countdown:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$5(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$1;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #calls: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->getFinishTextView()Landroid/view/View;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$6(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
