.class Lcom/jingdong/app/mall/personel/MyWebMessage$3$1;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

.field private final synthetic val$noData:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage$3;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$1;->val$noData:Landroid/widget/TextView;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$1;->val$noData:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->wareInfoList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$2(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 225
    return-void
.end method
