.class Lcom/jingdong/app/mall/WebActivity$PlayGame$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity$PlayGame;->beginFighter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/WebActivity$PlayGame;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity$PlayGame;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame$1;->this$1:Lcom/jingdong/app/mall/WebActivity$PlayGame;

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$PlayGame$1;->this$1:Lcom/jingdong/app/mall/WebActivity$PlayGame;

    #calls: Lcom/jingdong/app/mall/WebActivity$PlayGame;->loginCallBack()V
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity$PlayGame;->access$0(Lcom/jingdong/app/mall/WebActivity$PlayGame;)V

    .line 971
    return-void
.end method
