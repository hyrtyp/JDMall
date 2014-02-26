.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->handleClickEvent()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f070369

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 194
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #calls: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->checkSize()Z
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070378

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 202
    const-string v3, "photoShut"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    invoke-virtual {v3, v7}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 204
    .local v2, items1:[Ljava/lang/String;
    move-object v1, v2

    .line 210
    .local v1, items:[Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;

    invoke-direct {v3, p0, v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 206
    .end local v1           #items:[Ljava/lang/String;
    .end local v2           #items1:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    const v4, 0x7f070368

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    invoke-virtual {v3, v7}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 207
    .restart local v2       #items1:[Ljava/lang/String;
    move-object v1, v2

    .restart local v1       #items:[Ljava/lang/String;
    goto :goto_1
.end method
