.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$1;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 561
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v0

    const v1, 0x7f07038f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 562
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 564
    return-void
.end method
