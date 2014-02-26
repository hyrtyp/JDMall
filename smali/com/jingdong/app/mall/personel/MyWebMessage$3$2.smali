.class Lcom/jingdong/app/mall/personel/MyWebMessage$3$2;
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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$3$2;->this$1:Lcom/jingdong/app/mall/personel/MyWebMessage$3;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage$3;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage$3;->access$0(Lcom/jingdong/app/mall/personel/MyWebMessage$3;)Lcom/jingdong/app/mall/personel/MyWebMessage;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->dayIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$14(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    return-void
.end method
