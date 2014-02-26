.class Lcom/jingdong/app/mall/more/HistoryListActivity$1$1;
.super Ljava/lang/Object;
.source "HistoryListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/HistoryListActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/HistoryListActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$1;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/HistoryListActivity$1;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/HistoryListActivity$1;->access$0(Lcom/jingdong/app/mall/more/HistoryListActivity$1;)Lcom/jingdong/app/mall/more/HistoryListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/HistoryListActivity;->dbService:Lcom/jingdong/common/utils/DBHelperUtil;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/HistoryListActivity;->access$0(Lcom/jingdong/app/mall/more/HistoryListActivity;)Lcom/jingdong/common/utils/DBHelperUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllHistory()V

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/HistoryListActivity$1;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/HistoryListActivity$1;->access$0(Lcom/jingdong/app/mall/more/HistoryListActivity$1;)Lcom/jingdong/app/mall/more/HistoryListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/more/HistoryListActivity;->finish()V

    .line 99
    return-void
.end method
