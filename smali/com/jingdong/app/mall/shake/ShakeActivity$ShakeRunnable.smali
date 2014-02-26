.class public Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeRunnable;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShakeRunnable"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7c45134efb08acddL


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeRunnable;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$ShakeRunnable;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$9(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1578
    return-void
.end method
