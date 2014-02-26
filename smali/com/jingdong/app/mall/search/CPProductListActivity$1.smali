.class Lcom/jingdong/app/mall/search/CPProductListActivity$1;
.super Ljava/lang/Object;
.source "CPProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CPProductListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CPProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$1;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$1;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/search/CPProductListActivity;->finish()V

    .line 55
    return-void
.end method
