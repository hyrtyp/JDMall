.class Lcom/jingdong/app/mall/more/HistoryListActivity$1;
.super Ljava/lang/Object;
.source "HistoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/HistoryListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/HistoryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/HistoryListActivity$1;)Lcom/jingdong/app/mall/more/HistoryListActivity;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 84
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    const v2, 0x7f070272

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    const v1, 0x7f070271

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 90
    iget-object v1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    const v2, 0x7f070223

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/jingdong/app/mall/more/HistoryListActivity$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/HistoryListActivity$1$1;-><init>(Lcom/jingdong/app/mall/more/HistoryListActivity$1;)V

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;

    const v2, 0x7f0701a1

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/jingdong/app/mall/more/HistoryListActivity$1$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/more/HistoryListActivity$1$2;-><init>(Lcom/jingdong/app/mall/more/HistoryListActivity$1;)V

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 114
    return-void
.end method
