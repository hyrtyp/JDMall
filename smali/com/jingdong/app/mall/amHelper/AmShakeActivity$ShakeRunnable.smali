.class public Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeRunnable;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShakeRunnable"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7c45134efb08acddL


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeRunnable;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$ShakeRunnable;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->startShakeListener()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->access$4(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V

    .line 853
    return-void
.end method
