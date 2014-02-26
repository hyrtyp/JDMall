.class public Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;
.super Ljava/lang/Object;
.source "TabBarButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/frame/TabBarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateController"
.end annotation


# static fields
.field private static final MAX_NUMBER:I = 0x64

.field private static final MAX_STR:Ljava/lang/String; = "99+"


# instance fields
.field private num:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/frame/TabBarButton;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/TabBarButton;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->this$0:Lcom/jingdong/app/mall/utils/frame/TabBarButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNum()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->num:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->setNum(Ljava/lang/Integer;)V

    .line 176
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->num:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 163
    const-string v0, "99+"

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNum(Ljava/lang/Integer;)V
    .locals 1
    .parameter "num"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->num:Ljava/lang/Integer;

    .line 171
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;->this$0:Lcom/jingdong/app/mall/utils/frame/TabBarButton;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->invalidate()V

    .line 172
    return-void
.end method
