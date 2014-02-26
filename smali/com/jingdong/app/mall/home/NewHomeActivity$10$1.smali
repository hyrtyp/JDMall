.class Lcom/jingdong/app/mall/home/NewHomeActivity$10$1;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity$10;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$10;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$10$1;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$10;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$10$1;->this$1:Lcom/jingdong/app/mall/home/NewHomeActivity$10;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity$10;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity$10;->access$0(Lcom/jingdong/app/mall/home/NewHomeActivity$10;)Lcom/jingdong/app/mall/home/NewHomeActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/home/NewHomeActivity;->dataLoaded()V
    invoke-static {v0}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$6(Lcom/jingdong/app/mall/home/NewHomeActivity;)V

    .line 825
    return-void
.end method
