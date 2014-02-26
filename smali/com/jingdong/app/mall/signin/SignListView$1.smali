.class Lcom/jingdong/app/mall/signin/SignListView$1;
.super Landroid/os/Handler;
.source "SignListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/signin/SignListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/signin/SignListView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 59
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 65
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getLeftValue()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_8

    const-string v13, "0"

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, jingdou:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getUpValue()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    const-string v13, "0"

    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 69
    .local v7, lianxu:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getRightValue()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    const-string v13, "0"

    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 72
    .local v4, leiji:I
    div-int/lit8 v3, v1, 0xa

    .line 73
    .local v3, jingdouDivide:I
    div-int/lit8 v9, v7, 0xa

    .line 74
    .local v9, lianxuDivide:I
    div-int/lit8 v6, v4, 0xa

    .line 76
    .local v6, leijiDivide:I
    if-nez v3, :cond_1

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 80
    :cond_1
    if-nez v9, :cond_2

    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 84
    :cond_2
    if-nez v6, :cond_3

    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 88
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinJingDou:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$1(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, jingdouCurrent:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinLianXu:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$2(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 90
    .local v8, lianxuCurrent:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinLeiJi:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$3(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 92
    .local v5, leijiCurrent:I
    if-ge v2, v1, :cond_4

    .line 93
    add-int/2addr v2, v3

    .line 95
    if-gt v2, v1, :cond_b

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinJingDou:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$1(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_4
    :goto_4
    if-ge v8, v7, :cond_5

    .line 103
    add-int/2addr v8, v9

    .line 105
    if-gt v8, v7, :cond_c

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinLianXu:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$2(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_5
    :goto_5
    if-ge v5, v4, :cond_6

    .line 113
    add-int/2addr v5, v6

    .line 115
    if-gt v5, v4, :cond_d

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinLeiJi:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$3(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinJingDou:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$1(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-lt v13, v1, :cond_7

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinLianXu:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$2(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-lt v13, v7, :cond_7

    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinLeiJi:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$3(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-ge v13, v4, :cond_0

    .line 125
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    iget-object v13, v13, Lcom/jingdong/app/mall/signin/SignListView;->handler:Landroid/os/Handler;

    const/4 v14, 0x0

    const-wide/16 v15, 0x64

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 65
    .end local v1           #jingdou:I
    .end local v2           #jingdouCurrent:I
    .end local v3           #jingdouDivide:I
    .end local v4           #leiji:I
    .end local v5           #leijiCurrent:I
    .end local v6           #leijiDivide:I
    .end local v7           #lianxu:I
    .end local v8           #lianxuCurrent:I
    .end local v9           #lianxuDivide:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    .line 66
    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getLeftValue()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 67
    .restart local v1       #jingdou:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    .line 68
    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getUpValue()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 69
    .restart local v7       #lianxu:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    .line 70
    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getRightValue()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 98
    .restart local v2       #jingdouCurrent:I
    .restart local v3       #jingdouDivide:I
    .restart local v4       #leiji:I
    .restart local v5       #leijiCurrent:I
    .restart local v6       #leijiDivide:I
    .restart local v8       #lianxuCurrent:I
    .restart local v9       #lianxuDivide:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinJingDou:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$1(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 108
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinLianXu:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$2(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 118
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinLeiJi:Landroid/widget/Button;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$3(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/Button;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 131
    .end local v1           #jingdou:I
    .end local v2           #jingdouCurrent:I
    .end local v3           #jingdouDivide:I
    .end local v4           #leiji:I
    .end local v5           #leijiCurrent:I
    .end local v6           #leijiDivide:I
    .end local v7           #lianxu:I
    .end local v8           #lianxuCurrent:I
    .end local v9           #lianxuDivide:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->adapter:Lcom/jingdong/app/mall/signin/SignRecordAdapter;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$4(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/app/mall/signin/SignRecordAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v14}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jingdong/common/entity/SigninList;->getTopUsers()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->setRecords(Ljava/util/ArrayList;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->adapter:Lcom/jingdong/app/mall/signin/SignRecordAdapter;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$4(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/app/mall/signin/SignRecordAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jingdong/app/mall/signin/SignRecordAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 137
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getTopText1()Ljava/lang/String;

    move-result-object v10

    .line 139
    .local v10, tv1:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getTopText2()Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, tv2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jingdong/common/entity/SigninList;->getTopNumTimers()Ljava/lang/String;

    move-result-object v12

    .line 142
    .local v12, tv3:Ljava/lang/String;
    if-eqz v10, :cond_f

    .line 143
    const-string v13, "%X%X%X%"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    if-eqz v12, :cond_e

    .line 144
    const-string v13, "%X%X%X%"

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 146
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinTv1:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$5(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_7
    if-eqz v11, :cond_10

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinTv2:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$6(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 148
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinTv1:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$5(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/TextView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 154
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/signin/SignListView$1;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinTv2:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/jingdong/app/mall/signin/SignListView;->access$6(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/TextView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
