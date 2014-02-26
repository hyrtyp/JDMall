.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;->val$items:[Ljava/lang/String;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;->val$items:[Ljava/lang/String;

    aget-object v0, v1, p2

    .line 217
    .local v0, select:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    const v2, 0x7f070368

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getFromCamera()V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$1(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    const v2, 0x7f070369

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;->this$1:Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getFromLocal()V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$2(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    goto :goto_0
.end method
