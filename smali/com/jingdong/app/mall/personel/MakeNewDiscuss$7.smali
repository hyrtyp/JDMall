.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$7;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->initGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$7;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$7;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageGallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$7(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$7;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->imageAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$6(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 435
    return-void
.end method
