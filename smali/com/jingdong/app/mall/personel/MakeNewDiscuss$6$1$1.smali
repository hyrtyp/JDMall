.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;

.field private final synthetic val$thePosition:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;->this$2:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;

    iput p2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;->val$thePosition:I

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;->this$2:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$5(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;->val$thePosition:I

    if-le v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;->this$2:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$5(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;->val$thePosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1$1;->this$2:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6$1;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$6;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$6(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 408
    return-void
.end method
