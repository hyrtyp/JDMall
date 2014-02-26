.class Lcom/jingdong/app/mall/more/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$2;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 188
    invoke-static {}, Lcom/jingdong/common/database/table/SearchHistoryTable;->deleteAllHistory()V

    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$2;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->visiableHotWordView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$5(Lcom/jingdong/app/mall/more/SearchActivity;)V

    .line 190
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$2;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->showHotKeyWords()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$2(Lcom/jingdong/app/mall/more/SearchActivity;)V

    .line 191
    return-void
.end method
