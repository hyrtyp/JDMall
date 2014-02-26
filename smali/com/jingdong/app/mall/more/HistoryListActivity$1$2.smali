.class Lcom/jingdong/app/mall/more/HistoryListActivity$1$2;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$1$2;->this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$1;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 109
    return-void
.end method
