.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$14;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->hidePasswordEdit()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$23(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1233
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutDefaryPassword:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$29(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$19(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1235
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->hideInputKey()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 1236
    return-void
.end method
