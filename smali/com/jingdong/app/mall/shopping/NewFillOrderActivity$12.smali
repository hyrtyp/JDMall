.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$12;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->submitOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->submitOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$22(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 984
    return-void
.end method
