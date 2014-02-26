.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$4;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$4;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$4;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->resultAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 627
    return-void
.end method
