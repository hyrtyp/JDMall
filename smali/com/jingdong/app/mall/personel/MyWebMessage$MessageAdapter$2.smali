.class Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

.field private final synthetic val$askContentView:Landroid/widget/TextView;

.field private final synthetic val$askLayout:Landroid/widget/RelativeLayout;

.field private final synthetic val$contentText:Landroid/widget/TextView;

.field private final synthetic val$mMsgDetail:Landroid/widget/TextView;

.field private final synthetic val$mMsgTime:Landroid/widget/TextView;

.field private final synthetic val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

.field private final synthetic val$moreLinesView:Landroid/widget/RadioButton;

.field private final synthetic val$otherLayout:Landroid/widget/RelativeLayout;

.field private final synthetic val$replyLayout:Landroid/widget/RelativeLayout;

.field private final synthetic val$titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;Landroid/widget/RadioButton;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$replyLayout:Landroid/widget/RelativeLayout;

    iput-object p5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$otherLayout:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$askContentView:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$askLayout:Landroid/widget/RelativeLayout;

    iput-object p8, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$contentText:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$titleText:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$mMsgDetail:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$mMsgTime:Landroid/widget/TextView;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;)Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;
    .locals 1
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 551
    .local v9, object:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 552
    .local v8, lines:Ljava/lang/Integer;
    if-eqz v9, :cond_0

    move-object v8, v9

    .line 553
    check-cast v8, Ljava/lang/Integer;

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 631
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v11

    new-instance v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$titleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$mMsgDetail:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$mMsgTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$contentText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;)V

    invoke-virtual {v11, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->post(Ljava/lang/Runnable;)V

    .line 639
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/PushMessageUtils;->setMessageReaded(Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 642
    :cond_1
    return-void

    .line 566
    :sswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 567
    .local v7, askReplyObject:Ljava/lang/Object;
    if-eqz v7, :cond_2

    move-object v8, v7

    .line 568
    check-cast v8, Ljava/lang/Integer;

    .line 570
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 572
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$replyLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$otherLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$askContentView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->changeAskReplyViewState(ZLandroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RadioButton;)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$10(Lcom/jingdong/app/mall/personel/MyWebMessage;ZLandroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RadioButton;)V

    .line 574
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$otherLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setClickListener(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$8(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;Landroid/view/View;)V

    .line 575
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$replyLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setClickListener(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$8(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$askLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setClickListener(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$8(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$replyLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$otherLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$askContentView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->changeAskReplyViewState(ZLandroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RadioButton;)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$10(Lcom/jingdong/app/mall/personel/MyWebMessage;ZLandroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RadioButton;)V

    goto/16 :goto_0

    .line 594
    .end local v7           #askReplyObject:Ljava/lang/Object;
    :sswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$contentText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->changeViewState(ILandroid/widget/TextView;Landroid/widget/RadioButton;)V
    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$11(Lcom/jingdong/app/mall/personel/MyWebMessage;ILandroid/widget/TextView;Landroid/widget/RadioButton;)V

    goto/16 :goto_0

    .line 604
    :sswitch_2
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 605
    .local v10, secondObject:Ljava/lang/Object;
    if-eqz v10, :cond_4

    move-object v8, v10

    .line 606
    check-cast v8, Ljava/lang/Integer;

    .line 609
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$contentText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->changeViewState(ILandroid/widget/TextView;Landroid/widget/RadioButton;)V
    invoke-static {v0, v2, v3, v4}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$11(Lcom/jingdong/app/mall/personel/MyWebMessage;ILandroid/widget/TextView;Landroid/widget/RadioButton;)V

    .line 612
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->isHasAction()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$otherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 614
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$otherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$otherLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$moreLinesView:Landroid/widget/RadioButton;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setClickListener(Landroid/view/View;Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$8(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    .line 619
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->val$otherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0x14 -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method
