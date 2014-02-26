.class Lcom/jingdong/app/mall/shopping/PacksListActivity$1$1;
.super Ljava/lang/Object;
.source "PacksListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/PacksListActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/PacksListActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/PacksListActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/PacksListActivity$1;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/PacksListActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/PacksListActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/PacksListActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/PacksListActivity$1;)Lcom/jingdong/app/mall/shopping/PacksListActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/PacksListActivity;->fillLayout()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->access$0(Lcom/jingdong/app/mall/shopping/PacksListActivity;)V

    .line 165
    return-void
.end method
