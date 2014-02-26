.class Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;
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

.field private final synthetic val$contentText:Landroid/widget/TextView;

.field private final synthetic val$mMsgDetail:Landroid/widget/TextView;

.field private final synthetic val$mMsgTime:Landroid/widget/TextView;

.field private final synthetic val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

.field private final synthetic val$titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$titleText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$mMsgDetail:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$mMsgTime:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$contentText:Landroid/widget/TextView;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;)Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;
    .locals 1
    .parameter

    .prologue
    .line 645
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->isHasAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->gotoActionActivity(Lcom/jingdong/common/entity/MessageDetail;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$12(Lcom/jingdong/app/mall/personel/MyWebMessage;Lcom/jingdong/common/entity/MessageDetail;)V

    .line 653
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->isUnread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v7

    new-instance v0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$titleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$mMsgDetail:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$mMsgTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$contentText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3$1;-><init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;)V

    invoke-virtual {v7, v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->post(Ljava/lang/Runnable;)V

    .line 661
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$3;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/PushMessageUtils;->setMessageReaded(Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 666
    :cond_0
    return-void
.end method
