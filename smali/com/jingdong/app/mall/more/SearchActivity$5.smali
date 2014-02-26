.class Lcom/jingdong/app/mall/more/SearchActivity$5;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$5;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$5;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->hasInitHotWord:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$7(Lcom/jingdong/app/mall/more/SearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$5;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->showHistory()V

    .line 227
    :cond_0
    return-void
.end method
