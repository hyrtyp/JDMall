.class Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;

.field private final synthetic val$contentText:Landroid/widget/TextView;

.field private final synthetic val$mMsgDetail:Landroid/widget/TextView;

.field private final synthetic val$mMsgTime:Landroid/widget/TextView;

.field private final synthetic val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

.field private final synthetic val$titleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->this$2:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$titleText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$mMsgDetail:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$mMsgTime:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$contentText:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 635
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->this$2:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2;)Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$titleText:Landroid/widget/TextView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$mMsgDetail:Landroid/widget/TextView;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$mMsgTime:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$contentText:Landroid/widget/TextView;

    aput-object v3, v1, v2

    #calls: Lcom/jingdong/app/mall/personel/MyWebMessage;->setFontFakeBold(Z[Landroid/widget/TextView;)V
    invoke-static {v0, v4, v1}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$9(Lcom/jingdong/app/mall/personel/MyWebMessage;Z[Landroid/widget/TextView;)V

    .line 636
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MessageAdapter$2$1;->val$messageItem:Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/MessageDetailForMyWebMessage;->setStatus(Ljava/lang/Integer;)V

    .line 637
    return-void
.end method
