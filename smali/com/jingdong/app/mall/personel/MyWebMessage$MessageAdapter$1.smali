.class Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$contentText:Landroid/widget/TextView;

.field private final synthetic val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

.field private final synthetic val$moreLinesView:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;Landroid/widget/TextView;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$contentText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$moreLinesView:Landroid/widget/RadioButton;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$contentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 378
    .local v0, lineCount:I
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 407
    :goto_0
    return-void

    .line 381
    :sswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$moreLinesView:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 387
    :sswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$moreLinesView:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 396
    :sswitch_2
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$moreLinesView:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$1;->val$moreLinesView:Landroid/widget/RadioButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 378
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0x14 -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch
.end method
