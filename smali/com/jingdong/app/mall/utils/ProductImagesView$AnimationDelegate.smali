.class Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;
.super Ljava/lang/Object;
.source "ProductImagesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/ProductImagesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationDelegate"
.end annotation


# static fields
.field private static final LEFT:I = 0x1

.field private static final NONE:I = 0x0

.field private static final RIGHT:I = 0x2


# instance fields
.field private fit:Z

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/utils/ProductImagesView;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->fit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/utils/ProductImagesView;Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;)Lcom/jingdong/app/mall/utils/ProductImagesView;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    return-object v0
.end method

.method private declared-synchronized isFit()V
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->fit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 205
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->isFit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 200
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized adjust(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 221
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->childCount:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$18(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$14(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->targetOffset:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$19(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V

    .line 257
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 223
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$13(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$14(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$15(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V

    .line 224
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$13(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$16(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->lastPageArea:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$16(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    neg-int v1, v1

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$15(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 229
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$13(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->pageSize:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$14(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$15(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V

    .line 230
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$13(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$15(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V

    goto :goto_0

    .line 235
    :pswitch_2
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$11(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$17(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$15(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->area:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$13(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->unitWidth:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$17(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    mul-int/2addr v1, v2

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->targetOffset:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$19(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 5

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, vx:I
    :goto_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->isFit()V

    .line 169
    int-to-float v1, v0

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->targetOffset:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$10(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$11(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 170
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$11(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    int-to-float v3, v0

    const v4, 0x3e99999a

    mul-float/2addr v3, v4

    float-to-int v0, v3

    add-int/2addr v2, v0

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$12(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V

    .line 172
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->targetOffset:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$10(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$11(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->targetOffset:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$10(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$12(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V

    .line 174
    const/4 v0, 0x0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->offset:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$11(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->targetOffset:I
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$10(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->fit:Z

    .line 184
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate$1;-><init>(Lcom/jingdong/app/mall/utils/ProductImagesView$AnimationDelegate;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 192
    const-wide/16 v1, 0x1e

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
